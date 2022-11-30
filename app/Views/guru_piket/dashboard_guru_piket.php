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
    <!-- jQuery -->
    <script src="<?= base_url('assets') ?>/plugins/jquery/jquery.min.js"></script>
    <!-- DataTables -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

</head>

<body class="hold-transition">
    <!-- Navbar -->
    <nav class="navbar navbar-expand navbar-dark navbar-light px-5 mb-5">
        <ul class="navbar-nav">
            <li class="nav-item">
                <h4 class="text-bold">
                    <a href="<?= base_url('home') ?>" class="nav-link">Dashboard Guru Piket</a>
                </h4>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="<?= base_url('login/logout') ?>">
                    <i class="fa fa-sign-out-alt"></i> Logout
                </a>
            </li>
        </ul>
    </nav>
    <!-- /.navbar -->
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-4">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner p-4">
                        <h3>Kelas 10</h3>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <a href="<?= base_url('') ?>" class="small-box-footer p-2">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-4 col-4">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner p-4">
                        <h3>Kelas 11</h3>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <a href="<?= base_url('') ?>" class="small-box-footer p-2">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-4 col-4">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner p-4">
                        <h3>Kelas 12</h3>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <a href="<?= base_url('') ?>" class="small-box-footer p-2">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 4 -->
    <script src="<?= base_url('assets') ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url('assets') ?>/dist/js/adminlte.min.js"></script>
    <!-- Summernote -->
    <script src="<?= base_url('assets') ?>/plugins/summernote/summernote-bs4.min.js"></script>
    <!-- jQuery -->
    <script src="<?= base_url('assets') ?>/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?= base_url('assets') ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url('assets') ?>/dist/js/adminlte.min.js"></script>
    <!-- Summernote -->
    <script src="<?= base_url('assets') ?>/plugins/summernote/summernote-bs4.min.js"></script>
    <!-- DataTables  & Plugins -->
    <script src="<?= base_url('assets') ?>/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/jszip/jszip.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/pdfmake/pdfmake.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/pdfmake/vfs_fonts.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="<?= base_url('assets') ?>/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

    <script>
        $(function() {
            // Summernote
            $('#summernote').summernote()
        });
    </script>

    <script>
        window.setTimeout(
            function() {
                $(".alert").fadeTo(500, 0).slideUp(500, function() {
                    $(this).remove;
                });
            }, 1500);
    </script>

    <!-- tampil logo setting -->
    <script>
        function bacaGambar(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#gambar_load').attr('src', e.target.result)
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $('#preview_gambar').change(function() {
            bacaGambar(this);
        });
    </script>

    <script>
        $(function() {
            $("#example1").DataTable({
                "responsive": true,
                "lengthChange": true,
                "autoWidth": false,
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });
        });
    </script>
</body>

</html>