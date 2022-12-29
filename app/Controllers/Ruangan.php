<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_ruang_ujian;
use App\Models\Model_ruangan;
use App\Models\Model_tahun_ajar;

class Ruangan extends BaseController
{

    private $db = null;
    private $model_tahun_ajar = null;
    private $model_ruang_ujian = null;

    public function __construct()
    {
        $this->Model_ruangan = new Model_ruangan();
        $this->model_ruang_ujian = new Model_ruang_ujian();
        $this->db = \Config\Database::connect();
        $this->model_tahun_ajar = new Model_tahun_ajar();
        helper('form');
    }

    public function index()
    {
        session()->remove('log_ruangan');
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Ruang Ujian',
            'ruangan' => $this->Model_ruangan->findAll(),
        ];
        return view('admin/view_ruangan', $data);
    }
    public function insertData()
    {
        $data = [
            'ruang_nama' => $this->request->getPost('ruang_nama'),
        ];
        $this->Model_ruangan->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('ruangan');
    }

    public function editData($ruang_id)
    {
        $data = [
            'ruang_nama' => $this->request->getPost('ruang_nama'),
        ];
        $this->Model_ruangan->update($ruang_id, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('ruangan');
    }

    public function deleteData($ruang_id)
    {
        $this->Model_ruangan->delete($ruang_id);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('ruangan');
    }

    private function settingRuangan($tipeUjian)
    {
        if (!$this->request->uri->getSegment(3)) {
            session()->setFlashdata('someWrong', 'Kode ruangan tidak ditemukan');
            return redirect()->to(base_url('ruangan'));
        }
        $ruang_id = $this->request->uri->getSegment(3);
        // Get data tahun ajar
        if ($this->model_tahun_ajar->totalTahunAjar() == 0) {
            session()->setFlashdata('someWrong', 'Tahun ajar belum ditentukan');
            return redirect()->to(base_url('ruangan'));
        }
        $dtTahunAjar = $this->model_tahun_ajar->newTahunAjar();
        // getData Ruang
        $dtRuangan = $this->db->table('tb_ruangan')->where('ruang_id', $ruang_id)->get()->getResultArray();
        if (count($dtRuangan) != 1) {
            session()->setFlashdata('someWrong', 'Kode ruangan tidak ditemukan');
            return redirect()->to(base_url('ruangan'));
        }
        $dtRuangan = $dtRuangan[0];
        // Get data siswa di ruangan
        $dtSiswaInRuang = $this->db->table('tb_ruang_ujian')->join('tb_siswa', 'tb_ruang_ujian.siswa_id=tb_siswa.siswa_id');
        $dtSiswaInRuang->join('tb_kelas', 'kelas_id=siswa_id_kelas');
        $dtSiswaInRuang->where('ruang_id', $ruang_id);
        $dtSiswaInRuang->where('tipe_ujian', $tipeUjian);
        $dtSiswaInRuang->where('id_th_ajaran', $dtTahunAjar['th_id']);
        $dtSiswaInRuang = $dtSiswaInRuang->get()->getResultArray();
        // Set session ruangan
        $dtSession = [
            'ruang_id' => $ruang_id,
            'tipe_ujian' => $tipeUjian
        ];
        session()->set('log_ruangan', $dtSession);
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Ruang Ujian',
            'dataRuang' => $dtRuangan,
            'ruang_ujian' => $dtSiswaInRuang
        ];
        return view('admin/view_ruang_ujian', $data);
    }

    public function uts()
    {
        return $this->settingRuangan("UTS");
    }

    public function uas()
    {
        return $this->settingRuangan("UAS");
    }

    public function addPesertaUjian()
    {
        if (!$this->request->getPost('txtNIS') || empty(trim($this->request->getPost('txtNIS'))) || !session('log_ruangan')) {
            session()->setFlashdata('someWrong', 'Data tidak sesuai');
            return $this->goBack();
        }
        $nis = $this->request->getPost('txtNIS');
        // get data by nis
        $dtSiswa = $this->db->table('tb_siswa')->where('siswa_nis', $nis)->get()->getResultArray();
        if (count($dtSiswa) != 1) {
            session()->setFlashdata('someWrong', 'Data siswa tidak ditemukan. Penambahan siswa gagal');
            return $this->goBack();
        }
        $dtSiswa = $dtSiswa[0];
        // get data tahun ajaran
        $dtTahunAjar = $this->model_tahun_ajar->newTahunAjar();
        // Siswa apakah telah dalam ruangan
        $cek = $this->db->table('tb_ruang_ujian')->where('siswa_id', $dtSiswa['siswa_id']);
        $cek->where('ruang_id', session('log_ruangan')['ruang_id']);
        $cek->where('tipe_ujian', session('log_ruangan')['tipe_ujian']);
        $cek->where('id_th_ajaran', $dtTahunAjar['th_id']);
        if (count($cek->get()->getResultArray()) != 0) {
            session()->setFlashdata('someWarning', 'Data siswa sudah ada di dalam ruangan');
            return $this->goBack();
        }
        $data = [
            'ru_id' => '',
            'ruang_id' => session('log_ruangan')['ruang_id'],
            'siswa_id' => $dtSiswa['siswa_id'],
            'tipe_ujian' =>  session('log_ruangan')['tipe_ujian'],
            'id_th_ajaran' => $dtTahunAjar['th_id']
        ];
        if ($this->model_ruang_ujian->insert($data)) {
            session()->setFlashdata('someSuccess', 'Data siswa berhasil ditambahkan');
        } else {
            session()->setFlashdata('someWrong', 'Data siswa gagal ditambahkan karena kesalahan sistem!');
        }
        return redirect()->to(base_url('ruangan') . "/" . strtolower(session('log_ruangan')['tipe_ujian']) . "/" . session('log_ruangan')['ruang_id']);
    }
}
