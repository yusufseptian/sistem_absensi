<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="row">
    <div class="col-lg-4 col-4">
        <!-- small box -->
        <a href="<?= base_url('siswa') ?>" class="small-box bg-yellow">
            <div class="inner">
                <h3>Siswa</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-user-graduate"></i>
            </div>
            <div class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <a href="<?= base_url('mapel') ?>" class="small-box bg-olive">
            <div class="inner">
                <h3>Mata Pelajaran</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-book-open"></i>
            </div>
            <div class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <a href="<?= base_url('guru') ?>" class="small-box bg-red">
            <div class="inner">
                <h3>Guru</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-chalkboard-teacher"></i>
            </div>
            <div class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <a href="<?= base_url('tahun') ?>" class="small-box bg-orange">
            <div class="inner">
                <h3>Kelas</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-school"></i>
            </div>
            <div class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <a href="<?= base_url('tahun_ajar') ?>" class="small-box bg-blue">
            <div class="inner">
                <h3>Tahun Ajaran</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-graduation-cap"></i>
            </div>
            <div class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

</div>

<?= $this->endSection() ?>