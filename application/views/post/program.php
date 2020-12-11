<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Title -->
            <h1 class="mt-4">Program Desa</h1>

            <!-- Author -->
            <p class="lead">
                Ditulis Oleh
                <a>Admin</a>
            </p>

            <hr>

            <!-- Preview Image -->
            <img class="img-fluid rounded" src="<?= base_url('assets/dist/img/') . $programs['foto']; ?>" alt="">

            <hr>

            <!-- Post Content -->
            <?= $programs['program']; ?>
            <hr>