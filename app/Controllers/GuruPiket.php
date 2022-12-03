<?php

namespace App\Controllers;

use App\Controllers\BaseController;

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
        $dtTA = $this->getTANow();
        $dtKelas = [];
        if (count($dtTA) > 0) {
            $dtTA = $dtTA[0];
            $tmp = $tbKelas->join('tb_tahun_ajaran', 'tahun_ajaran = th_id');
            $tmp->where('tahun_ajaran', $dtTA['th_id']);
            $tmp->where('kelas_grade', $grade);
            foreach ($tmp->get()->getResultArray() as $dt) {
                $tmpData['kelas'] = $dt;
                $tmpData['jmlSiswa'] = count($tbSiswa->where('siswa_id_kelas', $dt['kelas_id'])->get()->getResultArray());
                array_push($dtKelas, $tmpData);
            }
        }
        return $dtKelas;
    }

    public function kelas10()
    {
        // dd($this->getKelasByGrade(10));
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
        if (!$this->request->uri->getSegment(3)) {
            session()->setFlashdata('someWrong', 'Kode kelas tidak ditemukan');
            return redirect()->to(base_url('/'));
        }
        $kodeKelas = $this->request->uri->getSegment(3);
        // dd($kodeKelas);
        $dtKelas = $this->db->table('tb_kelas')->where('kelas_kode', $kodeKelas)->get()->getResultArray();

        if (count($dtKelas) <= 0) {
            session()->setFlashdata('someWrong', 'Kode kelas tidak ditemukan');
            return redirect()->to(base_url('/'));
        }

        $dtKelas = $dtKelas[0];
        $dtSiswa = $this->db->table('tb_siswa')->where('siswa_id_kelas', $dtKelas['kelas_id'])->get()->getResultArray();
        if (count($dtSiswa) <= 0) {
            session()->setFlashdata('someWrong', 'Belum ada siswa terdaftar pada kelas ' . $dtKelas['kelas_nama']);
            return redirect()->to(base_url('/'));
        }

        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 12 IPA 1',
            'dtKelas' => $dtKelas,
            'dtSiswa' => $dtSiswa
        ];
        return view('guru_piket/v_absensi', $data);
    }
}
