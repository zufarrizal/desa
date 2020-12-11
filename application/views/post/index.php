<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <h1 class="my-4">Selamat Datang di
                <small>Website Desa Benerkulon</small>
            </h1>
            <img class="card-img-top mb-3" src="<?= base_url('assets/dist/img/') . $tentang['foto']; ?>" alt="Card image cap">
            <!-- Blog Post -->
            <?php $i = 0; ?>
            <?php foreach ($berita as $brt) : ?>
                <?php
                if ($i++ < 5) : ?>
                    <div class="card mb-4">
                        <img class="card-img-top" src="<?= base_url('assets/dist/img/') . $brt['foto']; ?>" alt="Card image cap">
                        <div class="card-body">
                            <h2 class="card-title"><?= $brt['judul']; ?></h2>
                            <p class="card-text"><?= substr($brt['berita'], 0, 175); ?></p>
                            <a href="<?= base_url('post/berita/') . $brt['id_berita']; ?>" class="btn btn-primary btn-sm">Baca Selengkapnya &rarr;</a>
                        </div>
                        <div class="card-footer text-muted">
                            Dipublikasikan pada <?= $brt['tanggal']; ?> Oleh <?= $brt['penulis']; ?>
                        </div>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>