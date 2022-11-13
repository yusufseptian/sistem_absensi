<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm">
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
            <table class="table table-sm">
                <thead>
                    <tr>
                        <th width="70px">#</th>
                        <th>NIS</th>
                        <th>Nama</th>
                        <th>Tempat Lahir</th>
                        <th>Tanggal Lahir</th>
                        <th>Jenis Kelamin</th>
                        <th>Alamat</th>
                        <th>Tahun Angkatan</th>
                        <th>Kelas</th>
                        <th class="text-center">Foto</th>
                        <th width="100px">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($siswa as $key => $value) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $value['siswa_nis'] ?></td>
                            <td><?= $value['siswa_nama'] ?></td>
                            <td><?= $value['siswa_tempat_lahir'] ?></td>
                            <td><?= $value['siswa_tgl_lahir'] ?></td>
                            <td><?= $value['siswa_jk'] ?></td>
                            <td><?= $value['siswa_alamat'] ?></td>
                            <td><?= $value['siswa_th_angkatan'] ?></td>
                            <td><?= $value['siswa_id_kelas'] ?></td>
                            <td class="text-center">
                                <img class="img-fluid shadow" src="<?= base_url('foto_siswa/' . $value['siswa_foto']) ?>" width="200px">
                            </td>
                            <td>
                                <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#edit<?= $value['siswa_id'] ?>">
                                    <i class="fas fa-pen"></i>
                                </button>
                                <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#delete<?= $value['siswa_id'] ?>">
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
                <h4 class="modal-title">Tambah Siswa</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open_multipart('siswa/insertData') ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>NIS</label>
                    <input name="siswa_nis" class="form-control" placeholder="Keterangan" required>
                </div>
                <div class="form-group">
                    <label>Nama</label>
                    <input name="siswa_nama" class="form-control" placeholder="Keterangan" required>
                </div>
                <div class="form-group">
                    <label>Tempat Lahir</label>
                    <input name="siswa_tempat_lahir" class="form-control" placeholder="Keterangan" required>
                </div>
                <div class="form-group">
                    <label>Tanggal Lahir</label>
                    <input type="date" name="siswa_tgl_lahir" class="form-control" placeholder="Keterangan" required>
                </div>

                <div class="form-group">
                    <label>Jenis Kelamin</label>
                    <select name="siswa_jk" class="form-control">
                        <option value="">--Pilih Jenis Kelamin--</option>
                        <option value="Laki-Laki">Laki-Laki</option>
                        <option value="Perempuan">Perempuan</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Alamat</label>
                    <input name="siswa_alamat" class="form-control" placeholder="Keterangan" required>
                </div>
                <div class="form-group">
                    <label>Tahun Angkatan</label>
                    <input name="siswa_th_angkatan" class="form-control" placeholder="Keterangan" required>
                </div>
                <div class="form-group">
                    <label>Kelas</label>
                    <select name="siswa_id_kelas" class="form-control">
                        <option value="">--Pilih Kelas--</option>
                        <?php foreach ($kelas as $value) : ?>
                            <option value="<?= $value['kelas_id'] ?>"><?= $value['kelas_nama'] ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Foto siswa</label>
                    <input id="preview_gambar" type="file" accept="image/*" name="siswa_foto" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Preview</label><br>
                    <img id="gambar_load" src="" width="200px">
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
<?php foreach ($siswa as $key => $value) { ?>
    <div class="modal fade" id="edit<?= $value['siswa_id'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <h4 class="modal-title">Edit Data siswa</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?= form_open_multipart('siswa/editData/' . $value['siswa_id']) ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label>NIS</label>
                        <input name="siswa_nis" class="form-control" value="<?= $value['siswa_nis'] ?>" required>
                    </div>
                    <div class=" form-group">
                        <label>Nama</label>
                        <input name="siswa_nama" class="form-control" value="<?= $value['siswa_nama'] ?>" required>
                    </div>
                    <div class=" form-group">
                        <label>Tempat Lahir</label>
                        <input name="siswa_tempat_lahir" class="form-control" value="<?= $value['siswa_tempat_lahir'] ?>" required>
                    </div>
                    <div class=" form-group">
                        <label>Tanggal Lahir</label>
                        <input type="date" name="siswa_tgl_lahir" class="form-control" value="<?= $value['siswa_tgl_lahir'] ?> " required>
                    </div>

                    <div class=" form-group">
                        <label>Jenis Kelamin</label>
                        <select name="siswa_jk" class="form-control">
                            <option value="">--Pilih Jenis Kelamin--</option>
                            <option value="Laki-Laki">Laki-Laki</option>
                            <option value="Perempuan">Perempuan</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Alamat</label>
                        <input name="siswa_alamat" class="form-control" value="<?= $value['siswa_alamat'] ?>" required>
                    </div>
                    <div class=" form-group">
                        <label>Tahun Angkatan</label>
                        <input name="siswa_th_angkatan" class="form-control" value="<?= $value['siswa_th_angkatan'] ?>" required>
                    </div>
                    <div class=" form-group">
                        <label>Kelas</label>
                        <select name="siswa_id_kelas" class="form-control">
                            <option value="">--Pilih Kelas--</option>
                            <?php foreach ($kelas as $nilai) : ?>
                                <option value="<?= $nilai['kelas_id'] ?>"><?= $nilai['kelas_nama'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Ganti Foto Siswa</label>
                        <input id="preview_gambar" type="file" accept="image/*" name="siswa_foto" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Preview</label><br>
                        <img id="gambar_load" src="<?= base_url('foto_siswa/' . $value['siswa_foto']) ?>" width="200px">
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
<?php foreach ($siswa as $key => $value) { ?>
    <div class="modal fade" id="delete<?= $value['siswa_id'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title">Hapus Banner</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Apakah Anda ingin menghapus <b><?= $value['siswa_nama'] ?></b>?
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                    <a href="<?= base_url('siswa/deleteData/' . $value['siswa_id']) ?>" class="btn btn-danger btn-sm">Hapus</a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<?php } ?>

<?= $this->endSection() ?>