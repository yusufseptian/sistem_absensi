<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class GuruPiket extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Guru Piket',
        ];
        return view('guru_piket/dashboard_guru_piket', $data);
    }
}
