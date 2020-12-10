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
                            <input type="hidden" class="form-control" id="exampleInputEmail1" name="id_visimisi" id="id_visimisi" value="<?= $visimisi['id_visimisi']; ?>">
                            <div class="form-group">
                                <label for="foto">Tampilan Foto Sekarang</label>
                                <img src="<?= base_url('assets/dist/img/') . $visimisi['foto']; ?>" alt="<?= $visimisi['foto']; ?>" style="max-width: 100%;">
                            </div>
                            <div class="form-group">
                                <label for="image">Foto Desa</label>
                                <input type="file" name="image" id="image" />
                            </div>
                            <div class="form-group">
                                <label for="visimisi">Visi Misi</label><small class="text-danger"></small>
                                <textarea class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd;" name="visimisi" id="visimisi"><?= $visimisi['visimisi']; ?></textarea>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i> Perbarui</button>
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