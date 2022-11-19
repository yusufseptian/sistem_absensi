<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= $title ?>-<?= $subtitle ?></title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/dist/css/adminlte.min.css">
    <!-- Summernote -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/summernote/summernote-bs4.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

</head>

<body>

    <div class="container">
        <div class="vh-100 d-flex">
            <div class="m-auto">
                <div class="row">
                    <div class="col-sm-5 m-auto">
                        <img src="<?= base_url('assets/login.jpg') ?>" class="img-fluid pad">
                    </div>
                    <div class="col-sm-6 m-auto">
                        <div class="card card-dark">
                            <div class="card-header">
                                <h3 class="card-title">Login</h3>
                            </div>
                            <div class="card-body">
                                <!-- <div class="form-group">
                                            <label>Role</label>
                                            <select name="role" class="form-control">
                                                <option value="">--Pilih Jenis Role--</option>
                                                <option value="1">Admin</option>
                                                <option value="2">Guru Piket</option>
                                                <option value="3">Guru</option>
                                            </select>
                                        </div> -->
                                <div class="form-group">
                                    <label>Username</label>
                                    <input name="username" value="" class="form-control" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input name="password" value="" type="password" class="form-control" placeholder="Password">
                                </div>
                                <button type="submit" class="btn btn-dark btn-block">Login</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- jQuery -->
    <script src="<?= base_url() ?>/assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?= base_url() ?>/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url() ?>/assets/dist/js/adminlte.min.js"></script>

</body>

</html>