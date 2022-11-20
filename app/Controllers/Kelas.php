<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_kelas;
use App\Models\Model_guru;
use App\Models\Model_tahun_ajar;

class Kelas extends BaseController
{
    public function __construct()
    {
        $this->Model_kelas = new Model_kelas();
        $this->Model_guru = new Model_guru();
        $this->Model_tahun_ajar = new Model_tahun_ajar();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas',
            'kelas' => $this->Model_kelas->findAll(),
            'w_kelas' => $this->Model_guru->findAll(),
            'tahun_ajar' => $this->Model_tahun_ajar->findAll(),
        ];
        return view('admin/view_kelas', $data);
    }
    public function insertData()
    {
        $data = [
            'kelas_kode' => $this->request->getPost('kelas_kode'),
            'kelas_nama' => $this->request->getPost('kelas_nama'),
            'wali_kelas' => $this->request->getPost('wali_kelas'),
            'tahun_ajaran' => $this->request->getPost('tahun_ajaran'),
        ];
        $this->Model_kelas->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('Kelas');
    }

    public function editData($kelas_id)
    {
        $data = [
            'kelas_kode' => $this->request->getPost('kelas_kode'),
            'kelas_nama' => $this->request->getPost('kelas_nama'),
            'wali_kelas' => $this->request->getPost('wali_kelas'),
            'tahun_ajaran' => $this->request->getPost('tahun_ajaran'),

        ];
        $this->Model_kelas->update($kelas_id, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('Kelas');
    }

    public function deleteData($kelas_id)
    {
        $this->Model_kelas->delete($kelas_id);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('Kelas');
    }
}
