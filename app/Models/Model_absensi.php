<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_absensi extends Model
{
    protected $table      = 'tb_absensi';
    protected $primaryKey = 'absensi_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'absensi_id',
        'ab_id_kelas',
        'ab_created_ad',
        'ab_created_by'
    ];
    // public function getDataGuru()
    // {
    //     return $this->db->table('tb_guru')
    //         ->join('tb_role', 'tb_role.role_id=tb_guru.guru_role')
    //         ->get()->getResultArray();
    // }
}
