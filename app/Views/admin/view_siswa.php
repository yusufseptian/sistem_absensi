<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm">
    <button class="btn btn-sm btn-dark mb-2" data-toggle="modal" data-target="#filter">
        <i class="fa fa-filter"></i> Filter Data
    </button>

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
            <table class="table table-sm" id="siswaTables">
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
                                <td><?= $value['kelas_nama'] ?></td>

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

<!-- modal filter -->
<div class="modal fade" id="filter">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-dark">
                <h4 class="modal-title">Filter Data Siswa</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row mb-3">
                    <div class="col-4">
                        <label for="cmb_th_ajar">Pilih Tahun Ajaran</label>
                    </div>
                    <select class="form-select rounded" id="cmb_th_ajar" aria-label="Tahun Ajaran" name="thajar" onchange="showClass()">
                        <?php foreach ($ta as $dt) : ?>
                            <option value="<?= $dt['th_id'] ?>"><?= $dt['th_ajaran'] ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="row mb-3">
                    <div class="col-4">
                        <label for="cmb_grade">Pilih Grade</label>
                    </div>
                    <select class="form-select rounded" id="cmb_grade" aria-label="Tahun Ajaran" name="thajar" onchange="showClass()">
                        <?php for ($i = 10; $i < 13; $i++) : ?>
                            <option value="<?= $i ?>">Kelas <?= $i ?></option>
                        <?php endfor; ?>
                    </select>
                </div>
                <div class="mb-3">
                    <form action="" method="get" id="setClass"></form>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <a href="<?= base_url('/siswa') ?>" class="btn btn-dark btn-sm">Show All</a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- Set js var -->
<script>
    var kelas = [];
    <?php foreach ($kelas as $dt) : ?>
        var temp = {
            "id": "<?= $dt['kelas_id'] ?>",
            "name": "<?= $dt['kelas_nama'] ?>",
            "ta": "<?= $dt['tahun_ajaran'] ?>",
            "grade": "<?= $dt['kelas_grade'] ?>"
        };
        kelas.push(temp);
    <?php endforeach; ?>

    // set class
    function showClass() {
        var ta = document.getElementById('cmb_th_ajar').value;
        var grade = document.getElementById('cmb_grade').value;
        var container = document.getElementById('setClass');
        $("#setClass").empty();

        var i = 0;

        kelas.forEach(function() {
            if (kelas[i]['grade'] == grade && kelas[i]['ta'] == ta) {
                var btn = document.createElement("button");
                btn.setAttribute("class", "btn btn-sm btn-success me-3 mx-1");
                btn.setAttribute("name", "kelas");
                btn.setAttribute("value", kelas[i]['id']);
                btn.innerHTML = kelas[i]['name'];
                container.append(btn);
            }
            i++;
        });

        if ($("#setClass").children().length == 0) {
            container.innerHTML = "class Not Found";
        }
    }
    $(document).ready(function() {
        showClass();
    })
</script>
<!-- /.modal -->

<script>
    $(document).ready(function() {
        setDataTables("#siswaTables");
    });
</script>

<?= $this->endSection() ?>