<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_absensi;
use App\Models\Model_detail_absensi;

class GuruPiket extends BaseController
{
    private $db = null;

    public function __construct()
    {
        $this->db = \Config\Database::connect();
    }

    public function index()
    {
        return redirect()->to(base_url('/'));
    }

    private function getTANow(): array
    {
        $tbTA = $this->db->table('tb_tahun_ajaran');
        return $tbTA->orderBy('th_id', 'desc')->limit(1)->get()->getResultArray();
    }

    private function getKelasByGrade(int $grade): array
    {
        $tbKelas = $this->db->table('tb_kelas');
        $tbSiswa = $this->db->table('tb_siswa');
        $tbAbsensi = $this->db->table('tb_absensi');
        $dtTA = $this->getTANow();
        $dtKelas = [];
        if (count($dtTA) > 0) {
            $dtTA = $dtTA[0];
            $tmp = $tbKelas->join('tb_tahun_ajaran', 'tahun_ajaran = th_id');
            $tmp->where('tahun_ajaran', $dtTA['th_id']);
            $tmp->where('kelas_grade', $grade);
            foreach ($tmp->get()->getResultArray() as $dt) {
                // Cek absensi kelas
                $tmpCekAbsensi = $tbAbsensi->where('ab_id_kelas', $dt['kelas_id'])->having('date(ab_created_at)', date('Y-m-d'));
                $tmpCekAbsensi = $tmpCekAbsensi->get()->getResultArray();
                if (count($tmpCekAbsensi) > 0) {
                    $tmpData['absensi'] = true;
                } else {
                    $tmpData['absensi'] = false;
                }
                $tmpData['kelas'] = $dt;
                $tmpData['jmlSiswa'] = count($tbSiswa->where('siswa_id_kelas', $dt['kelas_id'])->get()->getResultArray());
                array_push($dtKelas, $tmpData);
            }
        }
        return $dtKelas;
    }

    public function kelas10()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 10',
            'dtKelas' => $this->getKelasByGrade(10)
        ];
        return view('guru_piket/kelas_10', $data);
    }

    public function kelas11()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 11',
            'dtKelas' => $this->getKelasByGrade(11)
        ];
        return view('guru_piket/kelas_11', $data);
    }

    public function kelas12()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 12',
            'dtKelas' => $this->getKelasByGrade(12)
        ];
        return view('guru_piket/kelas_12', $data);
    }
    public function Absensi()
    {
        // cek kode kelas melalui url
        if (!$this->request->uri->getSegment(3)) {
            session()->setFlashdata('someWrong', 'Kode kelas tidak ditemukan');
            return redirect()->to(base_url('/'));
        }
        $kodeKelas = $this->request->uri->getSegment(3);

        // cek kelas berdasarkan kode kelas pada url
        $dtKelas = $this->db->table('tb_kelas')->where('kelas_kode', $kodeKelas)->get()->getResultArray();
        if (count($dtKelas) <= 0) {
            session()->setFlashdata('someWrong', 'Kode kelas tidak ditemukan');
            return redirect()->to(base_url('/'));
        }
        $dtKelas = $dtKelas[0];

        // cek absensi kelas pada hari ini apakah telah dilakukan
        $dtCekAbsen = $this->db->table('tb_absensi')->where('ab_id_kelas', $dtKelas['kelas_id']);
        $dtCekAbsen->having('date(ab_created_at)', date("Y-m-d"));
        $dtCekAbsen = $dtCekAbsen->get()->getResultArray();
        if (count($dtCekAbsen) > 0) {
            // Opsi 1
            // session()->setFlashdata('someWrong', 'Absensi pada kelas ' . $dtKelas['kelas_nama'] . ' telah dilakukan sebelumnya');
            // return redirect()->to(base_url('gurupiket/kelas' . $dtKelas['kelas_grade']));

            // Opsi 2
            $finished = true;
            $dtCekAbsen = $dtCekAbsen[0];
        } else {
            // Else Opsi 2
            $finished = false;
            if (session('log_auth')['role'] == '3') {
                session()->setFlashdata('someWrong', 'Data absensi pada kelas ' . $dtKelas['kelas_nama'] . ' belum di rekap');
                return redirect()->to(base_url('gurupiket/kelas' . $dtKelas['kelas_grade']));
            }
        }

        // cek data siswa berdasarkan kode kelas pada url
        $dtSiswa = $this->db->table('tb_siswa')->where('siswa_id_kelas', $dtKelas['kelas_id'])->get()->getResultArray();
        if (count($dtSiswa) <= 0) {
            session()->setFlashdata('someWrong', 'Belum ada siswa terdaftar pada kelas ' . $dtKelas['kelas_nama']);
            return redirect()->to(base_url('/'));
        }

        // get data absensi if finished
        $dtAbsensi = null;
        if ($finished) {
            session()->remove('idKelasAbsensi');
            $dtAbsensi = $this->db->table('tb_detail_absensi')->join('tb_siswa', 'siswa_id=dta_id_siswa');
            $dtAbsensi->where('dta_ab_id', $dtCekAbsen['absensi_id']);
            $dtAbsensi = $dtAbsensi->get()->getResultArray();
        } else {
            // session for save data detail absensi
            session()->set('idKelasAbsensi', $dtKelas['kelas_id']);
        }

        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas ' . $dtKelas['kelas_nama'],
            'abFinished' => $finished
        ];

        if ($finished) {
            $data['dtAbsensi'] = $dtAbsensi;
        } else {
            $data['dtKelas'] = $dtKelas;
            $data['dtSiswa'] = $dtSiswa;
        }

        return view('guru_piket/v_absensi', $data);
    }
    public function saveAbsensi()
    {
        if (!session('idKelasAbsensi')) {
            session()->setFlashdata('someWrong', 'Kesalahan pada kode kelas');
            return redirect()->to(base_url('/'));
        }

        $tbSiswa = $this->db->table('tb_siswa');
        $tbAbsensi = $this->db->table('tb_absensi');
        $tbKelas = $this->db->table('tb_kelas');

        $modelAbsensi = new Model_absensi();
        $modelDetailAbsensi = new Model_detail_absensi();

        // Validasi input absensi (Skip or not?)
        $valid = [];
        $dtSiswa = $tbSiswa->where('siswa_id_kelas', session('idKelasAbsensi'));
        // foreach ($dtSiswa->get()->getResultArray() as $dt) {
        //     $temp = [];
        // }

        // save absensi
        $dt = [
            'absensi_id' => '',
            'ab_id_kelas' => session('idKelasAbsensi'),
            'ab_created_by' => session('log_auth')['id']
        ];
        if ($modelAbsensi->insert($dt)) {
            // get data absensi
            $dtAb = $tbAbsensi->where('ab_id_kelas', session('idKelasAbsensi'))->having('date(ab_created_at)', date('Y-m-d'));
            $dtAb = $dtAb->get()->getResultArray();

            // save detail absensi
            if (count($dtAb) > 0) {
                $dtAb = $dtAb[0];
                $count = 0;
                foreach ($dtSiswa->get()->getResultArray() as $dt) {
                    $dtaDt = [
                        'dta_id' => '',
                        'dta_ab_id' => $dtAb['absensi_id'],
                        'dta_id_siswa' => $dt['siswa_id'],
                        'dta_keterangan' => $this->request->getPost('cmb' . $dt['siswa_nis']),
                        'dta_deskripsi' => $this->request->getPost('txt' . $dt['siswa_nis']),
                        'dta_edited_at' => '',
                        'dta_edited_by' => ''
                    ];
                    if ($modelDetailAbsensi->insert($dtaDt)) {
                        $count++;
                    }
                }
            }
        } else {
            // Jika gagal simpan data absensi
        }
        $dtKelas = $tbKelas->where('kelas_id', session('idKelasAbsensi'))->get()->getResultArray()[0];
        session()->setFlashdata('someSuccess', 'Absensi pada keas ' . $dtKelas['kelas_nama'] . ' telah berhasil direkap');
        session()->remove('idKelasAbsensi');
        return redirect()->to(base_url('gurupiket/kelas' . $dtKelas['kelas_grade']));
    }
}
