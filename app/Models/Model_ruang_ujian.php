<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_ruang_ujian extends Model
{
    protected $table      = 'tb_ruang_ujian';
    protected $primaryKey = 'ru_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'ru_id',
        'ruang_id',
        'siswa_id',
        'tipe_ujian',
        'id_th_ajaran',
    ];
}
