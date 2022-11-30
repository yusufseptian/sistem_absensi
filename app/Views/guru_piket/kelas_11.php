<?= $this->extend('template/t_guru_piket') ?>
<?= $this->section('content') ?>

<div class="row">
    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-warning">
            <div class="inner">
                <h3>IPA A</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-user-graduate"></i>
            </div>
            <a href="<?= base_url('jurusan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-olive">
            <div class="inner">
                <h3>IPA B</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-book-open"></i>
            </div>
            <a href="<?= base_url('pekerjaan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-cyan">
            <div class="inner">
                <h3>IPA C</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-school"></i>
            </div>
            <a href="<?= base_url('agama') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-gray">
            <div class="inner">
                <h3>IPA D</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-user-tie"></i>
            </div>
            <a href="<?= base_url('penghasilan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-orange">
            <div class="inner">
                <h3>IPS A</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-graduation-cap"></i>
            </div>
            <a href="<?= base_url('user') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
                <h3>IPS B</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-file"></i>
            </div>
            <a href="<?= base_url('ppdb') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-blue">
            <div class="inner">
                <h3>IPS C</h3>
                <h5>Jumlah Data : 12</h5>
            </div>
            <div class="icon">
                <i class="fas fa-file"></i>
            </div>
            <a href="<?= base_url('ppdb/listDiterima') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-3">
        <!-- small box -->
        <div class="small-box bg-dark">
            <div class="inner">
                <h3>IPS D</h3>
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