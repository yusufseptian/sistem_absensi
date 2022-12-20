<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_siswa extends Model
{
    protected $table      = 'tb_siswa';
    protected $primaryKey = 'siswa_id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';

    protected $allowedFields = [
        'siswa_id',
        'siswa_nis',
        'siswa_nama',
        'siswa_tempat_lahir',
        'siswa_tgl_lahir',
        'siswa_jk',
        'siswa_alamat',
        'siswa_th_angkatan',
        'siswa_id_kelas',
    ];

    public function getKelasSiswa()
    {
        return $this->db->table('tb_siswa')
            ->join('tb_kelas', 'tb_kelas.kelas_id=tb_siswa.siswa_id_kelas')
            ->get()->getResultArray();
    }

    public function totalSiswa()
    {
        return $this->db->table('tb_siswa')->countAllResults();
    }
}
