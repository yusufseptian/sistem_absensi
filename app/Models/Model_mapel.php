<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_mapel extends Model
{
    protected $table      = 'tb_mapel';
    protected $primaryKey = 'mapel_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['mapel_id', 'mapel_kode', 'mapel_nama'];

    public function totalMapel()
    {
        return $this->db->table('tb_mapel')->countAllResults();
    }
}
