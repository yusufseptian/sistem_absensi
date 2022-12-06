<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_detail_absensi extends Model
{
    protected $table      = 'tb_detail_absensi';
    protected $primaryKey = 'dta_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'dta_id',
        'dta_ab_id',
        'dta_id_siswa',
        'dta_keterangan',
        'dta_deskripsi',
        'dta_edited_at',
        'dta_edited_by'
    ];
    // public function getDataGuru()
    // {
    //     return $this->db->table('tb_guru')
    //         ->join('tb_role', 'tb_role.role_id=tb_guru.guru_role')
    //         ->get()->getResultArray();
    // }
}
