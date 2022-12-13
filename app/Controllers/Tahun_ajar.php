<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_tahun_ajar;

class Tahun_ajar extends BaseController
{
    public function __construct()
    {
        $this->Model_tahun_ajar = new Model_tahun_ajar();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Tahun Ajaran',
            'Tahun_ajar' => $this->Model_tahun_ajar->findAll(),
        ];
        return view('admin/view_tahun_ajar', $data);
    }
    public function insertData()
    {
        $data = [
            'th_ajaran' => $this->request->getPost('th_ajaran'),
        ];
        $this->Model_tahun_ajar->insert($data);
        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('Tahun_ajar');
    }

    // public function editData($th_id)
    // {
    //     $data = [
    //         'th_ajaran' => $this->request->getPost('th_ajaran'),
    //     ];
    //     $this->Model_tahun_ajar->update($th_id, $data);
    //     session()->setFlashdata('edit', 'Data berhasil diedit..!!');
    //     return redirect()->to('Tahun_ajar');
    // }

    // public function deleteData($th_id)
    // {
    //     $this->Model_tahun_ajar->delete($th_id);
    //     session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
    //     return redirect()->to('Tahun_ajar');
    // }
}
