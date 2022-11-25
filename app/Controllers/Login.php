<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_role;
use App\Models\Model_guru;

class Login extends BaseController
{
    private $db = null;

    public function __construct()
    {
        $this->Model_guru = new Model_guru();
        $this->Model_role = new Model_role();
        $this->validation = \config\Services::validation();
        $this->db = \Config\Database::connect();
        helper('form');
    }

    public function index()
    {
        if (session('log_auth')) {
            return redirect()->to(base_url('/'));
        }

        $validation = $this->validation;
        if (session('validation')) {
            $validation = session('validation');
        }

        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Login',
            'guru' => $this->Model_guru->findAll(),
            'role' => $this->Model_role->findAll(),
            'validation' => $validation
        ];

        return view('view_login', $data);
    }

    public function logauth()
    {
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');

        $valid = $this->validate([
            'username' => [
                'label' => 'Username',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} tidak boleh kosong'
                ]
            ],
            'password' => [
                'label' => 'Password',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} tidak boleh kosong'
                ]
            ]
        ]);

        if ($valid) {
            $tbAkun = $this->db->table('tb_guru');
            $tbAkun->where('guru_email', $username);
            $tbAkun->where('guru_password', md5($password));
            $dt = $tbAkun->get()->getResultArray();
            if (count($dt) != 1) {
                session()->setFlashdata('logFailed', "Username atau password salah");
                return redirect()->to(base_url('/login'));
            }
            $authData = [
                'nama' => $dt[0]['guru_nama'],
                'foto' => $dt[0]['guru_foto'],
                'role' => $dt[0]['guru_role']
            ];
            session()->set('log_auth', $authData);
            return redirect()->to(base_url('/'));
        } else {
            session()->setFlashdata('validation', $this->validation);
            return redirect()->to(base_url('/login'));
        }
    }
    public function logout()
    {
        session()->remove('log_auth');
        return redirect()->to(base_url('/login'));
    }
}
