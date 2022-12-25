<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_ruangan;

class Ruangan extends BaseController
{
    public function __construct()
    {
        $this->Model_ruangan = new Model_ruangan();
        helper('form');
    }

    public function index()
    {
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
}
