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
                <table class="table table-sm" id="mapelTables">
                    <thead>
                        <tr>
                            <th width="70px">#</th>
                            <th>Nis</th>
                            <th>Nama Kelas</th>
                            <th>Nama Siswa</th>
                            <th width="100px">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($ruang_ujian as $key => $value) { ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td>nis</td>
                                <td>nama kelas</td>
                                <td>nama siswa</td>
                                <td>
                                    <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#edit<?= $value['ru_id'] ?>">
                                        <i class="fas fa-pen"></i>
                                    </button>
                                    <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#delete<?= $value['ru_id'] ?>">
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

<script>
    $(document).ready(function() {
        setDataTables("#mapelTables");
    });
</script>

<?= $this->endSection() ?>