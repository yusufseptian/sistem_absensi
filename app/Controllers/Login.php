<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_role;
use App\Models\Model_guru;

class Login extends BaseController
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
            'subtitle' => 'Login',
            'guru' => $this->Model_guru->findAll(),
            'role' => $this->Model_role->findAll(),
        ];
        return view('view_login', $data);
    }
}
