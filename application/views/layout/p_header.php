<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Selamat Datang Di Desa Benerkulon</title>

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url('assets') ?>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?= base_url('assets') ?>/css/blog-home.css" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" style="opacity: 80%" ;>
        <div class=" container">
            <a class="navbar-brand" href="<?= base_url(); ?>"><?= $title; ?></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="<?= base_url('post/visimisi'); ?>">Visi & Misi Desa<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<?= base_url('post/struktur'); ?>">Struktur Desa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<?= base_url('post/program'); ?>">Program Desa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<?= base_url('post/tentang'); ?>">Tentang Desa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<?= base_url('auth'); ?>">Masuk</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>