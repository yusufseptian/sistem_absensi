<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_guru;
use App\Models\Model_role;

class Guru extends BaseController
{
    public function __construct()
    {
        $this->Model_guru = new Model_guru();
        $this->Model_role = new Model_role();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Guru',
            'guru' => $this->Model_guru->getDataGuru(),
            'role' => $this->Model_role->findAll(),
        ];
        return view('admin/view_guru', $data);
    }

    public function insertData()
    {
        $file = $this->request->getFile('guru_foto');
        $nama_file = $file->getRandomName();
        $data = [
            'guru_nip' => $this->request->getPost('guru_nip'),
            'guru_nama' => $this->request->getPost('guru_nama'),
            'guru_email' => $this->request->getPost('guru_email'),
            'guru_password' => md5($this->request->getPost('guru_password')),
            'guru_role' => $this->request->getPost('guru_role'),
            'guru_status' => $this->request->getPost('guru_status'),
            'guru_foto' => $nama_file,
        ];
        $file->move('foto_guru/', $nama_file);
        $this->Model_guru->insert($data);

        session()->setFlashdata('tambah', 'Data berhasil ditambahkan..!!');
        return redirect()->to('Guru');
    }

    public function editData($guru_id)
    {
        // jika logo tidak diganti
        $file = $this->request->getFile('guru_foto');
        if ($file->getError() == 4) {
            $data = [
                'guru_id' => $guru_id,
                'guru_nip' => $this->request->getPost('guru_nip'),
                'guru_nama' => $this->request->getPost('guru_nama'),
                'guru_email' => $this->request->getPost('guru_email'),
                'guru_password' => md5($this->request->getPost('guru_password')),
                'guru_role' => $this->request->getPost('guru_role'),
                'guru_status' => $this->request->getPost('guru_status'),
            ];
            $this->Model_guru->update($guru_id, $data);
        } else {
            // jika logo diganti
            $guru = $this->Model_guru->where('guru_id', $guru_id)->get()->getRowArray();
            if ($guru['guru_foto'] != "") {
                unlink('./foto_guru/' . $guru['guru_foto']);
            }
            $nama_file = $file->getRandomName();
            $data = [
                'guru_id' => $guru_id,
                'guru_nip' => $this->request->getPost('guru_nip'),
                'guru_nama' => $this->request->getPost('guru_nama'),
                'guru_email' => $this->request->getPost('guru_email'),
                'guru_password' => $this->request->getPost('guru_password'),
                'guru_role' => $this->request->getPost('guru_role'),
                'guru_status' => $this->request->getPost('guru_status'),
                'guru_foto' => $nama_file,
            ];
            $file->move('foto_guru/', $nama_file);
            $this->Model_guru->update($guru_id, $data);
        }
        session()->setFlashdata('edit', 'Data berhasil diedit..!!');
        return redirect()->to('Guru');
    }

    public function deleteData($guru_id)
    {
        $guru = $this->Model_guru->where('guru_id', $guru_id)->get()->getRowArray();
        if ($guru['guru_foto'] != "") {
            unlink('./foto_guru/' . $guru['guru_foto']);
        }
        $data = [
            'guru_id' => $guru_id,
        ];
        $this->Model_guru->delete($data);
        session()->setFlashdata('delete', 'Data berhasil dihapus..!!');
        return redirect()->to('Guru');
    }
}
