<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_siswa;
use App\Models\Model_kelas;

class Siswa extends BaseController
{
    public function __construct()
    {
        $this->Model_siswa = new Model_siswa();
        $this->Model_kelas = new Model_kelas();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Siswa',
            'siswa' => $this->Model_siswa->getKelasSiswa(),
            'kelas' => $this->Model_kelas->findAll(),
        ];
        return view('admin/view_siswa', $data);
    }

    public function insertData()
    {
        $data = [
            'siswa_nis' => $this->request->getPost('siswa_nis'),
            'siswa_nama' => $this->request->getPost('siswa_nama'),
            'siswa_tempat_lahir' => $this->request->getPost('siswa_tempat_lahir'),
            'siswa_tgl_lahir' => $this->request->getPost('siswa_tgl_lahir'),
            'siswa_jk' => $this->request->getPost('siswa_jk'),
            'siswa_alamat' => $this->request->getPost('siswa_alamat'),
            'siswa_th_angkatan' => $this->request->getPost('siswa_th_angkatan'),
            'siswa_id_kelas' => $this->request->getPost('siswa_id_kelas'),
        ];
        $this->Model_siswa->insert($data);

        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('Siswa');
    }

    public function editData($siswa_id)
    {
        $data = [
            'siswa_id' => $siswa_id,
            'siswa_nis' => $this->request->getPost('siswa_nis'),
            'siswa_nama' => $this->request->getPost('siswa_nama'),
            'siswa_tempat_lahir' => $this->request->getPost('siswa_tempat_lahir'),
            'siswa_tgl_lahir' => $this->request->getPost('siswa_tgl_lahir'),
            'siswa_jk' => $this->request->getPost('siswa_jk'),
            'siswa_alamat' => $this->request->getPost('siswa_alamat'),
            'siswa_th_angkatan' => $this->request->getPost('siswa_th_angkatan'),
            'siswa_id_kelas' => $this->request->getPost('siswa_id_kelas'),
        ];
        $this->Model_siswa->update($siswa_id, $data);
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('siswa');
    }

    public function deleteData($siswa_id)
    {
        $this->Model_siswa->delete($siswa_id);
        session()->setFlashdata('delete', 'Data berhasil dihapus');
        return redirect()->to('siswa');
    }
}
