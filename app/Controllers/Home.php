<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        if (session('log_auth')['role'] == "1") {
            $data = [
                'title' => 'Absensi',
                'subtitle' => 'Home Admin',
            ];
            return view('v_home', $data);
        } elseif (session('log_auth')['role'] == "2") {
            $data = [
                'title' => 'Absensi',
                'subtitle' => 'Guru Piket',
            ];
            return view('guru_piket/dashboard_guru_piket', $data);
        } else {
            return "Access Dennied";
        }
    }
    public function nganu()
    {
        return 'hello';
    }
}
