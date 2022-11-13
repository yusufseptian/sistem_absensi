<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_mapel;

class Mapel extends BaseController
{
    public function __construct()
    {
        $this->Model_mapel = new Model_mapel();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Mata Pelajaran',
            'mapel' => $this->Model_mapel->findAll(),
        ];
        return view('admin/view_mapel', $data);
    }
    public function insertData()
    {
        $data = [
            'mapel_kode' => $this->request->getPost('mapel_kode'),
            'mapel_nama' => $this->request->getPost('mapel_nama'),
        ];
        $this->Model_mapel->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('mapel');
    }

    public function editData($mapel_id)
    {
        $data = [
            'mapel_kode' => $this->request->getPost('mapel_kode'),
            'mapel_nama' => $this->request->getPost('mapel_nama'),
        ];
        $this->Model_mapel->update($mapel_id, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('mapel');
    }

    public function deleteData($mapel_id)
    {
        $this->Model_mapel->delete($mapel_id);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('mapel');
    }
}
