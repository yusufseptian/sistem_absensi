<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"><?= $title ?> - <?= $subtitle ?></h3>
            <!-- tombol aksi -->
            <div class="card-tools">
                <button class="btn btn-xs btn-flat btn-primary" data-toggle="modal" data-target="#add">
                    <i class="fas fa-plus"></i> Add
                </button>
            </div>
        </div>
        <div class="card-body p-0">
            <?php
            if (session()->getFlashdata('tambah')) {
                echo '<div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('tambah');
                echo '</h6></div>';
            }

            if (session()->getFlashdata('edit')) {
                echo '<div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('edit');
                echo '</h6></div>';
            }

            if (session()->getFlashdata('delete')) {
                echo '<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('delete');
                echo '</h6></div>';
            }
            ?>
            <div class="p-2">
                <table class="table table-sm" id="jadwalTable">
                    <thead>
                        <tr>
                            <th width="70px">#</th>
                            <th>Nama Mapel</th>
                            <th>Tanggal ujian</th>
                            <th width="100px">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($jadwal_ujian as $key => $value) { ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $value['id_mapel'] ?></td>
                                <td><?= $value['tipe_ujian'] ?></td>
                                <td>
                                    <button class="btn btn-xs btn-flat btn-info" data-toggle="modal" data-target="#">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#edit<?= $value['id_ju'] ?>">
                                        <i class="fas fa-pen"></i>
                                    </button>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<!-- Modal Edit -->
<?php foreach ($jadwal_ujian as $key => $value) { ?>
    <div class="modal fade" id="edit<?= $value['id_ju'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <h4 class="modal-title">Edit Jadwal</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?= form_open('' . $value['id_ju']) ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nama Mapel</label>
                        <input name="id_mapel" class="form-control" value="<?= $value['id_mapel'] ?>" placeholder="Nama Mapel" required>
                    </div>
                    <div class="form-group">
                        <label>Tanggal Ujian</label>
                        <input name="tanggal_ujian" class="form-control" value="<?= $value['tanggal_ujian'] ?>" placeholder="Tanggal Ujian" required>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-warning btn-sm">Ubah</button>
                </div>
                <?= form_close() ?>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<?php } ?>


<script>
    $(document).ready(function() {
        setDataTables("#jadwalTable");
    });
</script>

<?= $this->endSection() ?>