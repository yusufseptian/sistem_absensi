<?php

namespace App\Controllers;

use App\Models\Model_siswa;
use App\Models\Model_mapel;
use App\Models\Model_guru;
use App\Models\Model_kelas;
use App\Models\Model_tahun_ajar;

class Home extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->Model_siswa = new Model_siswa();
        $this->Model_mapel = new Model_mapel();
        $this->Model_guru = new Model_guru();
        $this->Model_kelas = new Model_kelas();
        $this->Model_tahun_ajar = new Model_tahun_ajar();
    }

    public function index()
    {
        if (session('log_auth')['role'] == "1") {
            $data = [
                'title' => 'Absensi',
                'subtitle' => 'Home Admin',
                'totSiswa' => $this->Model_siswa->totalSiswa(),
                'totMapel' => $this->Model_mapel->totalMapel(),
                'totGuru' => $this->Model_guru->totalGuru(),
                'totKelas' => $this->Model_kelas->totalKelas(),
                'totTahunAjar' => $this->Model_tahun_ajar->totalTahunAjar(),
            ];
            return view('v_home', $data);
        } elseif (session('log_auth')['role'] == "2") {
            $data = [
                'title' => 'Absensi',
                'subtitle' => 'Guru Piket',
            ];
            return view('guru_piket/dashboard_guru_piket', $data);
        } else {
            $data = [
                'title' => 'Absensi',
                'subtitle' => 'Pengawas',
            ];
            return view('pengawas/dashboard_pengawas', $data);
        }
    }

    public function nganu()
    {
        return 'hello';
    }
}
