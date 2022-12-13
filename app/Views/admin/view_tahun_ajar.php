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

            ?>
            <table class="table table-sm">
                <thead>
                    <tr>
                        <th width="70px">#</th>
                        <th>Tahun Ajaran</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($Tahun_ajar as $key => $value) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $value['th_ajaran'] ?></td>

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
                <h4 class="modal-title">Tambah Tahun Ajaran</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('Tahun_ajar/insertData') ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Tahun Ajaran</label>
                    <input name="th_ajaran" class="form-control" placeholder="Tahun Ajaran" required>
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

<?= $this->endSection() ?>