<?php

namespace App\Controllers;

class turu extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Home Guru',
        ];
        return view('template/t_guru', $data);
    }
}
