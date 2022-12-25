<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_ruangan extends Model
{
    protected $table      = 'tb_ruangan';
    protected $primaryKey = 'ruang_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'ruang_id',
        'ruang_nama',
    ];
}
