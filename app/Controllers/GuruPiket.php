<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class GuruPiket extends BaseController
{
    public function index()
    {
        return redirect()->to(base_url('/'));
    }

    public function kelas10()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 10',
        ];
        return view('guru_piket/kelas_10', $data);
    }

    public function kelas11()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 11',
        ];
        return view('guru_piket/kelas_11', $data);
    }

    public function kelas12()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 12',
        ];
        return view('guru_piket/kelas_12', $data);
    }
}