<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Daftar <?= $subtitle ?></h3>
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
                <table class="table table-sm" id="ruangTable">
                    <thead>
                        <tr>
                            <th width="70px">#</th>
                            <th>Nama Ruangan</th>
                            <th>Jenis ujian</th>
                            <th width="100px">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($ruangan as $key => $value) { ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $value['ruang_nama'] ?></td>
                                <td>
                                    <button class="btn btn-m btn-flat btn-success" data-toggle="modal" data-target="#edit<?= $value['ruang_id'] ?>">
                                        UAS
                                    </button>
                                    <button class="btn btn-m btn-flat btn-primary" data-toggle="modal" data-target="#delete<?= $value['ruang_id'] ?>">
                                        UTS
                                    </button>
                                </td>
                                <td>
                                    <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#edit<?= $value['ruang_id'] ?>">
                                        <i class="fas fa-pen"></i>
                                    </button>
                                    <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#delete<?= $value['ruang_id'] ?>">
                                        <i class="fas fa-trash"></i>
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

<!-- Modal Add -->
<div class="modal fade" id="add">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title">Tambah Ruang Ujian</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('ruangan/insertData') ?>
            <div class="modal-body">

                <div class="form-group">
                    <label>Nama Ruangan</label>
                    <input name="ruang_nama" class="form-control" placeholder="Nama Ruangan" required>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- Modal Edit -->
<?php foreach ($ruangan as $key => $value) { ?>
    <div class="modal fade" id="edit<?= $value['ruang_id'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <h4 class="modal-title">Edit Ruangan</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?= form_open('ruangan/editData/' . $value['ruang_id']) ?>
                <div class="modal-body">

                    <div class="form-group">
                        <label>Nama Ruangan</label>
                        <input name="ruang_nama" class="form-control" value="<?= $value['ruang_nama'] ?>" placeholder="Nama Ruangan" required>
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

<!-- Modal Delete -->
<?php foreach ($ruangan as $key => $value) { ?>
    <div class="modal fade" id="delete<?= $value['ruang_id'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title">Hapus Mata Pelajaran</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Apakah Anda ingin menghapus <b><?= $value['ruang_nama'] ?></b>?
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                    <a href="<?= base_url('ruangan/deleteData/' . $value['ruang_id']) ?>" class="btn btn-danger btn-sm">Hapus</a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<?php } ?>

<script>
    $(document).ready(function() {
        setDataTables("#ruangTable");
    });
</script>

<?= $this->endSection() ?>