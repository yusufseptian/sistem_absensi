<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="row">
    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-warning">
            <div class="inner">
                <h3>Siswa</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-user-graduate"></i>
            </div>
            <a href="<?= base_url('jurusan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-olive">
            <div class="inner">
                <h3>Mata Pelajaran</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-book-open"></i>
            </div>
            <a href="<?= base_url('pekerjaan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-light">
            <div class="inner">
                <h3>Guru</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-chalkboard-teacher"></i>
            </div>
            <a href="<?= base_url('pendidikan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-orange">
            <div class="inner">
                <h3>Kelas</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-school"></i>
            </div>
            <a href="<?= base_url('agama') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <h3>Wali Kelas</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-user-tie"></i>
            </div>
            <a href="<?= base_url('penghasilan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-gray">
            <div class="inner">
                <h3>Tahun Ajaran</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-graduation-cap"></i>
            </div>
            <a href="<?= base_url('user') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-danger">
            <div class="inner">
                <h3>UTS</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-file"></i>
            </div>
            <a href="<?= base_url('ppdb') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-primary">
            <div class="inner">
                <h3>UAS</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-file"></i>
            </div>
            <a href="<?= base_url('ppdb/listDiterima') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-dark">
            <div class="inner">
                <h3>Ruang Ujian</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-door-open"></i>
            </div>
            <a href="<?= base_url('ppdb/listDitolak') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>

<?= $this->endSection() ?>