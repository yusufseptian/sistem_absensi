<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_jadwal_ujian extends Model
{
    protected $table      = 'tb_jadwal_ujian';
    protected $primaryKey = 'ru_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'id_ju', 'tipe_ujian', 'id_mapel', 'id_th_ajaran', 'tanggal_ujian'
    ];
}
