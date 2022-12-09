<?= $this->extend('template/t_pengawas') ?>
<?= $this->section('content') ?>

<div class="row">

    <div class="col-lg-4 col-sm-12 text-center">
        <a href="<?= base_url('gurupiket/kelas10') ?>" class="small-box bg-success">
            <div class="inner p-4">
                <h3>Kelas 10</h3>
                <i class="icon fas fa-8x fa-user-graduate"></i>
            </div>
            <div class="small-box-footer p-2">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

    <div class="col-lg-4 col-sm-12 text-center">
        <a href="<?= base_url('gurupiket/kelas11') ?>" class="small-box bg-warning">
            <div class="inner p-4">
                <h3>Kelas 11</h3>
                <i class="icon fas fa-8x fa-user-graduate"></i>
            </div>
            <div class="small-box-footer p-2">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

    <div class="col-lg-4 col-sm-12 text-center">
        <a href="<?= base_url('gurupiket/kelas12') ?>" class="small-box bg-red">
            <div class="inner p-4">
                <h3>Kelas 12</h3>
                <i class="icon fas fa-8x fa-user-graduate"></i>
            </div>
            <div class="small-box-footer p-2">More info <i class="fas fa-arrow-circle-right"></i></div>
        </a>
    </div>

</div>

<?= $this->endSection() ?>