<?php

namespace App\Database\Seeds;

use App\Models\Model_siswa;
use CodeIgniter\Database\Seeder;
use PhpParser\NodeVisitor\FirstFindingVisitor;

class Siswa extends Seeder
{
    public function __construct()
    {
        $this->Model_siswa = new Model_siswa();
        helper('form');
    }
    public function run()
    {
        $faker = \Faker\Factory::create("id_ID");
        for ($i = 1; $i <= 32; $i++) {
            $data = [
                'siswa_nis' => $faker->randomNumber(5, true),
                'siswa_nama' => $faker->name(),
                'siswa_tempat_lahir' => $faker->city(),
                'siswa_tgl_lahir' => $faker->date('Y_m_d'),
                'siswa_jk' => '',
                'siswa_alamat' => $faker->streetAddress(),
                'siswa_th_angkatan' => 2019,
                'siswa_id_kelas' => 29,
            ];
            $this->Model_siswa->insert($data);
        }
    }
}
