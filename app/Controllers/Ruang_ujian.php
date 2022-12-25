<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_ruang_ujian;

class Ruang_ujian extends BaseController
{
    public function __construct()
    {
        $this->Model_ruang_ujian = new Model_ruang_ujian();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Ruang Ujian',
            'ruang_ujian' => $this->Model_ruang_ujian->findAll(),
        ];
        return view('admin/view_ruang_ujian', $data);
    }
}
