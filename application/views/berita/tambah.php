<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?= $title ?>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i><?= $title ?></a></li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-lg-6">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Form <?= $title ?></h3>
                    </div>
                    <!-- /.box-header -->
                    <form role="form" method="POST" action="" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="judul">Judul</label><small class="text-danger"><?= form_error('judul'); ?></small>
                                <input type="text" class="form-control" id="judul" name="judul" placeholder="Masukan Judul">
                            </div>
                            <div class="form-group">
                                <label for="penulis">Penulis</label><small class="text-danger"><?= form_error('penulis'); ?></small>
                                <input type="text" class="form-control" id="penulis" name="penulis" placeholder="Masukan penulis">
                            </div>
                            <div class="form-group">
                                <label for="kategori">Kategori</label><small class="text-danger"><?= form_error('kategori'); ?></small>
                                <select class="custom-select form-control" id="kategori" name="kategori" style="width: 100%;">
                                    <?php foreach ($kategori as $ktg) : ?>
                                        <option value="<?= $ktg['kategori']; ?>"><?= $ktg['kategori']; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="visimisi">Berita</label><small class="text-danger"></small>
                                <textarea class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd;" name="visimisi" id="visimisi"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="image">Unggah Gambar</label>
                                <input type="file" name="image" id="image" />
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> Publikasikan</button>
                        </div>
                    </form>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->