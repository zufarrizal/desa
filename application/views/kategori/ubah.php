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
                    <form role="form" method="POST" action="">
                        <div class="box-body">
                            <input type="hidden" class="form-control" id="id_kategori" name="id_kategori" value="<?= $kategori['id_kategori']; ?>">
                            <div class="form-group">
                                <label for="kategori">Kategori</label><small class="text-danger"><?= form_error('kategori'); ?></small>
                                <input type="text" class="form-control" id="kategori" name="kategori" placeholder="Masukan Kategori" value="<?= $kategori['kategori']; ?>">
                            </div>
                            <div class="form-group">
                                <label for="keterangan">Keterangan</label><small class="text-danger"><?= form_error('keterangan'); ?></small>
                                <input type="text" class="form-control" id="keterangan" name="keterangan" placeholder="Masukan Keterangan" value="<?= $kategori['keterangan']; ?>">
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i> Ubah</button>
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