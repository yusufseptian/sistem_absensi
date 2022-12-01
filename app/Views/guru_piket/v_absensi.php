<?= $this->extend('template/t_guru_piket') ?>
<?= $this->section('content') ?>
<div class="col-sm-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Absensi <?= $subtitle ?></h3>

        </div>
        <div class="card-body p-0">
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
                    <tr>
                        <td>1</td>
                        <td>5190411039</td>
                        <td>Muhammad Yusuf Septian</td>
                        <td>

                            <div class="form-check d-inline-block">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Hadir
                                </label>
                            </div>
                            <div class="form-check d-inline-block">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Izin
                                </label>
                            </div>
                            <div class="form-check d-inline-block">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Sakit
                                </label>
                            </div>
                            <div class="form-check d-inline-block">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Alpha
                                </label>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        setDataTables("#kelasTables");
    });
</script>
<?= $this->endSection() ?>