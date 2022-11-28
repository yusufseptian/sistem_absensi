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
            <table class="table table-sm" id="kelasTables">
                <thead>
                    <tr>
                        <th width="70px">#</th>
                        <th>Kode Kelas</th>
                        <th>Kelas</th>
                        <th>Tingkat Kelas</th>
                        <th>Wali Kelas</th>
                        <th>Tahun Ajaran</th>
                        <th width="100px">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($kelas as $key => $value) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $value['kelas_kode'] ?></td>
                            <td><?= $value['kelas_nama'] ?></td>
                            <td><?= $value['kelas_grade'] ?></td>
                            <td><?= $value['wali_kelas'] ?></td>
                            <td><?= $value['tahun_ajaran'] ?></td>
                            <td>
                                <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#edit<?= $value['kelas_id'] ?>">
                                    <i class="fas fa-pen"></i>
                                </button>
                                <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#delete<?= $value['kelas_id'] ?>">
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

<!-- Modal Add -->
<div class="modal fade" id="add">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title">Tambah Kelas</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('kelas/insertData') ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Kode Kelas</label>
                    <input name="kelas_kode" class="form-control" placeholder="Tahun Ajaran" required>
                </div>
                <div class="form-group">
                    <label>kelas</label>
                    <input name="kelas_nama" class="form-control" placeholder="kelas_nama" required>
                </div>
                <div class="form-group">
                    <label>Tingkat Kelas</label>
                    <select name="kelas_grade" class="form-control">
                        <option value="">--Pilih Tingkat Kelas--</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Wali Kelas</label>
                    <select name="wali_kelas" class="form-control">
                        <option value="">--Pilih Wali Kelas--</option>
                        <?php foreach ($w_kelas as $value) : ?>
                            <option value="<?= $value['guru_id'] ?>"><?= $value['guru_nama'] ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Tahun Ajaran</label>
                    <select name="tahun_ajaran" class="form-control">
                        <option value="">--Pilih Tahun Ajaran--</option>
                        <?php foreach ($tahun_ajar as $value) : ?>
                            <option value="<?= $value['th_id'] ?>"><?= $value['th_ajaran'] ?></option>
                        <?php endforeach; ?>
                    </select>
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
<?php foreach ($kelas as $key => $value) { ?>
    <div class="modal fade" id="edit<?= $value['kelas_id'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <h4 class="modal-title">Edit kelas</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?= form_open('kelas/editData/' . $value['kelas_id']) ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Kode Kelas</label>
                        <input name="kelas_kode" class="form-control" value="<?= $value['kelas_kode'] ?>" placeholder="Tahun Ajaran" required>
                    </div>
                    <div class="form-group">
                        <label>kelas</label>
                        <input name="kelas_nama" class="form-control" value="<?= $value['kelas_nama'] ?>" placeholder="kelas_nama" required>
                    </div>
                    <div class="form-group">
                        <label>Tingkat Kelas</label>
                        <select name="kelas_grade" class="form-control">
                            <option value="">--Pilih Tingkat Kelas--</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Wali Kelas</label>
                        <select name="wali_kelas" class="form-control">
                            <option value="">--Pilih Wali Kelas--</option>
                            <?php foreach ($w_kelas as $value) : ?>
                                <option value="<?= $value['guru_id'] ?>"><?= $value['guru_nama'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tahun Ajaran</label>
                        <select name="tahun_ajaran" class="form-control">
                            <option value="">--Pilih Tahun Ajaran--</option>
                            <?php foreach ($tahun_ajar as $value) : ?>
                                <option value="<?= $value['th_id'] ?>"><?= $value['th_ajaran'] ?></option>
                            <?php endforeach; ?>
                        </select>
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
<?php foreach ($kelas as $key => $value) { ?>
    <div class="modal fade" id="delete<?= $value['kelas_id'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title">Hapus Mata Pelajaran</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Apakah Anda ingin menghapus <b><?= $value['kelas_kode'] ?></b>?
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                    <a href="<?= base_url('kelas/deleteData/' . $value['kelas_id']) ?>" class="btn btn-danger btn-sm">Hapus</a>
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
        setDataTables("#kelasTables");
    });
</script>

<?= $this->endSection() ?>