<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class GuruPiket extends BaseController
{
    private $db = null;

    public function __construct()
    {
        $this->db = \Config\Database::connect();
    }

    public function index()
    {
        return redirect()->to(base_url('/'));
    }

    private function getTANow(): array
    {
        $tbTA = $this->db->table('tb_tahun_ajaran');
        return $tbTA->orderBy('th_id', 'desc')->limit(1)->get()->getResultArray();
    }

    private function getKelasByGrade(int $grade): array
    {
        $tbKelas = $this->db->table('tb_kelas');
        $dtTA = $this->getTANow();
        $dtKelas = [];
        if (count($dtTA) > 0) {
            $dtTA = $dtTA[0];
            $dtKelas = $tbKelas->join('tb_tahun_ajaran', 'tahun_ajaran = th_id');
            $dtKelas->where('tahun_ajaran', $dtTA['th_id']);
            $dtKelas->where('kelas_grade', $grade);
            $dtKelas = $dtKelas->get()->getResultArray();
        }
        return $dtKelas;
    }

    public function kelas10()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 10',
            'dtKelas' => $this->getKelasByGrade(10)
        ];
        return view('guru_piket/kelas_10', $data);
    }

    public function kelas11()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 11',
            'dtKelas' => $this->getKelasByGrade(11)
        ];
        return view('guru_piket/kelas_11', $data);
    }

    public function kelas12()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 12',
            'dtKelas' => $this->getKelasByGrade(12)
        ];
        return view('guru_piket/kelas_12', $data);
    }
    public function Absensi()
    {
        $data = [
            'title' => 'Absensi',
            'subtitle' => 'Kelas 12 IPA 1',
        ];
        return view('guru_piket/v_absensi', $data);
    }
}
