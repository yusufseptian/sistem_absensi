<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_guru extends Model
{
    protected $table      = 'tb_guru';
    protected $primaryKey = 'guru_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'guru_id',
        'guru_nip',
        'guru_nama',
        'guru_email',
        'guru_password',
        'guru_foto',
        'guru_role',
        'guru_status',
    ];
    public function getDataGuru()
    {
        return $this->db->table('tb_guru')
            ->join('tb_role', 'tb_role.role_id=tb_guru.guru_role')
            ->get()->getResultArray();
    }
}
