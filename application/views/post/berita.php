<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Title -->
            <h1 class="mt-4"><?= $berita['judul'] ?></h1>

            <!-- Author -->
            <p class="lead">
                Ditulis Oleh
                <?= $berita['penulis'] ?>
            </p>

            <hr>

            <!-- Date/Time -->
            <p>Dipublikasikan pada <?= $berita['tanggal'] ?></p>

            <hr>

            <!-- Preview Image -->
            <img class="img-fluid rounded" src="<?= base_url('assets/dist/img/') . $berita['foto'] ?>" alt="">

            <hr>

            <!-- Post Content -->
            <?= $berita['berita'] ?>