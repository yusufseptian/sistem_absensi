<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_tahun_ajar extends Model
{
    protected $table      = 'tb_tahun_ajaran';
    protected $primaryKey = 'th_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = ['th_id', 'th_ajaran'];

    public function totalTahunAjar()
    {
        return $this->db->table('tb_tahun_ajaran')->countAllResults();
    }

    public function newTahunAjar()
    {
        if ($this->totalTahunAjar() == 0) {
            return null;
        }
        return $this->db->table($this->table)->orderBy('th_id', 'desc')->get()->getResultArray()[0];
    }
}
