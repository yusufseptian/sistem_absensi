<?= $this->extend('template/t_guru_piket') ?>
<?= $this->section('content') ?>

<div class="row">
    <?php foreach ($dtKelas as $dt) : ?>
        <div class="col-3">
            <!-- small box -->
            <div class="small-box bg-light">
                <div class="inner">
                    <h3><?= $dt['kelas']['kelas_nama'] ?></h3>
                    <h5>Jumlah Data : <?= $dt['jmlSiswa'] ?></h5>
                </div>
                <div class="icon">
                    <i class="fas fa-user-graduate"></i>
                </div>
                <a href="<?= base_url('GuruPiket/Absensi' . "/" . $dt['kelas']['kelas_kode']) ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<?= $this->endSection() ?>