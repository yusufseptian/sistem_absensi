<?= $this->extend('template/t_guru_piket') ?>
<?= $this->section('content') ?>
<div class="col-sm-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Absensi <?= $subtitle ?></h3>

        </div>
        <div class="card-body p-0">
            <form action="<?= base_url('gurupiket/saveabsensi') ?>" method="post">
                <table class="table table-sm" id="kelasTables">
                    <thead>
                        <tr>
                            <th width="70px">#</th>
                            <th>NIS</th>
                            <th>Nama</th>
                            <th>Keterangan</th>
                            <th>Deskripsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        if (!$abFinished) :
                            foreach ($dtSiswa as $key => $value) { ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $value['siswa_nis'] ?></td>
                                    <td><?= $value['siswa_nama'] ?></td>
                                    <td>
                                        <div class="form-check d-inline-block">
                                            <input class="form-check-input" type="radio" name="cmb<?= $value['siswa_nis'] ?>" id="cmb<?= $value['siswa_nis'] ?>H" value="H">
                                            <label class="form-check-label" for="cmb<?= $value['siswa_nis'] ?>H">
                                                Hadir
                                            </label>
                                        </div>
                                        <div class="form-check d-inline-block">
                                            <input class="form-check-input" type="radio" name="cmb<?= $value['siswa_nis'] ?>" id="cmb<?= $value['siswa_nis'] ?>I" value="I">
                                            <label class="form-check-label" for="cmb<?= $value['siswa_nis'] ?>I">
                                                Izin
                                            </label>
                                        </div>
                                        <div class="form-check d-inline-block">
                                            <input class="form-check-input" type="radio" name="cmb<?= $value['siswa_nis'] ?>" id="cmb<?= $value['siswa_nis'] ?>S" value="S">
                                            <label class="form-check-label" for="cmb<?= $value['siswa_nis'] ?>S">
                                                Sakit
                                            </label>
                                        </div>
                                        <div class="form-check d-inline-block">
                                            <input class="form-check-input" type="radio" name="cmb<?= $value['siswa_nis'] ?>" id="cmb<?= $value['siswa_nis'] ?>A" value="A" checked>
                                            <label class="form-check-label" for="cmb<?= $value['siswa_nis'] ?>A">
                                                Alpha
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <textarea class="form-control" name="txt<?= $value['siswa_nis'] ?>" id="txt<?= $value['siswa_nis'] ?>" rows="3"></textarea>
                                        </div>
                                    </td>
                                </tr>
                            <?php } ?>
                        <?php else : ?>
                            <?php foreach ($dtAbsensi as $key => $value) { ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $value['siswa_nis'] ?></td>
                                    <td><?= $value['siswa_nama'] ?></td>
                                    <td><?= $value['dta_keterangan'] ?></td>
                                    <td><?= $value['dta_deskripsi'] ?></td>
                                </tr>
                            <?php } ?>
                        <?php endif; ?>
                    </tbody>
                </table>
                <?php if (!$abFinished) : ?>
                    <input type="submit" value="Simpan" class="btn btn-success">
                <?php endif; ?>
            </form>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        <?php if ($abFinished) : ?>
            setDataTables("#kelasTables");
        <?php endif; ?>
    });
</script>
<?= $this->endSection() ?>