<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Pengawas extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Pengawas',
        ];
        return view('pengawas/dashboard_pengawas', $data);
    }

    public function kelas10()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 10',
        ];
        return view('pengawas/kelas_10', $data);
    }

    public function kelas11()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 11',
        ];
        return view('pengawas/kelas_11', $data);
    }

    public function kelas12()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 12',
        ];
        return view('pengawas/kelas_12', $data);
    }
}
