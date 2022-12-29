<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.6.16/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.6.16/dist/sweetalert2.all.min.js"></script>
<script>
    $(document).ready(function() {
        <?php if (session('someWrong')) : ?>
            // Jika ada pesan kesalahan
            Swal.fire({
                position: 'top-end',
                icon: 'error',
                title: '<?= session('someWrong') ?>',
                showConfirmButton: false,
                timer: 1500
            });
        <?php endif; ?>
        <?php if (session('someWarning')) : ?>
            // Jika ada pesan warning
            Swal.fire({
                position: 'top-end',
                icon: 'warning',
                title: '<?= session('someWarning') ?>',
                showConfirmButton: false,
                timer: 1500
            });
        <?php endif; ?>
        <?php if (session('someSuccess')) : ?>
            // Jika ada pesan sukses
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: '<?= session('someSuccess') ?>',
                showConfirmButton: false,
                timer: 1500
            });
        <?php endif; ?>
    })
</script>