<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_kelas;

class Kelas extends BaseController
{
    public function __construct()
    {
        $this->Model_kelas = new Model_kelas();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas',
            'kelas' => $this->Model_kelas->findAll(),
        ];
        return view('admin/view_kelas', $data);
    }
    public function insertData()
    {
        $data = [
            'kelas_kode' => $this->request->getPost('kelas_kode'),
            'kelas_nama' => $this->request->getPost('kelas_nama'),
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
