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
}
