<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_kelas extends Model
{
    protected $table      = 'tb_kelas';
    protected $primaryKey = 'kelas_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'kelas_id',
        'kelas_kode',
        'kelas_nama',
        'kelas_grade',
        'wali_kelas',
        'tahun_ajaran'
    ];
    public function getKelas()
    {
        return $this->db->table('tb_kelas')
            ->join('tb_guru', 'tb_guru.guru_id=tb_kelas.wali_kelas')
            ->join('tb_tahun_ajaran', 'tb_tahun_ajaran.th_id=tb_kelas.tahun_ajaran')
            ->get()->getResultArray();
    }
}
