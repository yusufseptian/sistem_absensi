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

<body class="hold-transition login-page" style="background-image: url('<?= base_url() ?>/assets/download.svg')">
    <div class="login-box">

        <div class="border border-warning rounded">
            <div class="card card-body login-card-body">
                <div class="card-header">
                    <div class="login-logo">
                        <img src="<?= base_url() ?>/assets/sma.png" class="img-size-64">
                    </div>
                    <H3 class="text-center">SMA 1 HARGEULIS</H3>
                </div>
                <br>
                <form action="<?= base_url('login/logauth'); ?>" method="post">
                    <?php if ($validation->getError('username') || $validation->getError('password')) : ?>
                        <div class="form-group">
                            <div class="alert alert-danger" role="alert">
                                Username atau password tidak sesuai
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if (session('logFailed')) : ?>
                        <div class="form-group">
                            <div class="alert alert-danger" role="alert">
                                <?= session('logFailed') ?>
                            </div>
                        </div>
                    <?php endif; ?>

                    <div class="form-group">
                        <label>Username</label>
                        <div class="input-group mb-3">
                            <input name="username" value="" class="form-control" placeholder="Username">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <div class="input-group mb-3">
                            <input name="password" value="" type="password" class="form-control" placeholder="Password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Login</button>

                </form>

            </div>
            <!-- /.login-card-body -->
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