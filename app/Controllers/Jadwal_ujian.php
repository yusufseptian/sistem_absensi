<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_jadwal_ujian;

class Jadwal_ujian extends BaseController
{
    public function __construct()
    {
        $this->Model_jadwal_ujian = new Model_jadwal_ujian();
        helper('form');
    }

    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Jadwal Ujian',
            'jadwal_ujian' => $this->Model_jadwal_ujian->findAll(),
        ];
        return view('admin/view_jadwal_ujian', $data);
    }
}
