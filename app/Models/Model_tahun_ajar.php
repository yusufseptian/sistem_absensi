<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_tahun_ajar extends Model
{
    protected $table      = 'tb_tahun_ajaran';
    protected $primaryKey = 'th_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['th_id', 'th_ajaran', 'status'];
}
