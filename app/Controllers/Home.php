<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Home Admin',
        ];
        return view('template/t_admin', $data);
    }
    public function nganu()
    {
        return 'hello';
    }
}
