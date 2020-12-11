<!-- Pagination
<ul class="pagination justify-content-center mb-4">
    <li class="page-item">
        <a class="page-link" href="#">&larr; Older</a>
    </li>
    <li class="page-item disabled">
        <a class="page-link" href="#">Newer &rarr;</a>
    </li>
</ul> -->

</div>

<!-- Sidebar Widgets Column -->
<div class="col-md-4">
    <!-- Categories Widget -->
    <div class="card my-4">
        <h5 class="card-header">Program Desa</h5>
        <div class="card-body">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-unstyled mb-0">
                        <?php foreach ($program as $prg) : ?>
                            <li><?= $prg['program']; ?></li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="card my-4">
        <h5 class="card-header">Tentang Desa</h5>
        <div class="card-body">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-unstyled mb-0">
                        <li><?= substr($tentang['tentang'], 0, 200); ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Side Widget -->
    <div class="card my-4">
        <h5 class="card-header">Peta Desa Benerkulon</h5>
        <div class="card-body">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15812.383638670517!2d109.73511022709833!3d-7.779654860293523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7acf7128d52bfb%3A0x5027a76e3554090!2sBenerkulon%2C%20Kec.%20Ambal%2C%20Kabupaten%20Kebumen%2C%20Jawa%20Tengah!5e0!3m2!1sid!2sid!4v1607611828696!5m2!1sid!2sid" max-width="100%" height="auto" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
    </div>

</div>

</div>
<!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; <?= date('Y') ?> Desa Benerkulon Kec. Ambal Kab. Kebumen</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="<?= base_url('assets/') ?>vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url('assets/') ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>