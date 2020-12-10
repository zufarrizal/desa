<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Title -->
            <h1 class="mt-4">Tentang Desa</h1>

            <!-- Author -->
            <p class="lead">
                Ditulis Oleh
                <a>Admin</a>
            </p>

            <hr>

            <!-- Preview Image -->
            <img class="img-fluid rounded" src="<?= base_url('assets/dist/img/') . $tentang['foto']; ?>" alt="">

            <hr>

            <!-- Post Content -->
            <?= $tentang['tentang']; ?>
            <hr>