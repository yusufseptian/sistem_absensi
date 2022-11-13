<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_role extends Model
{
    protected $table      = 'tb_role';
    protected $primaryKey = 'role_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'role_id',
        'role',
    ];
}
