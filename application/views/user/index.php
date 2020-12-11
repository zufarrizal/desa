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
                            <div class="form-group">
                                <label for="username">Username</label><small class="text-danger"><?= form_error('username'); ?></small>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Masukan username" value="<?= $user['username']; ?>">
                            </div>
                            <div class="form-group">
                                <label for="password1">Password</label><small class="text-danger"><?= form_error('password'); ?></small>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Masukan password lama">
                            </div>
                            <div class="form-group">
                                <label for="password1">Password Baru</label><small class="text-primary"> *Kosongi bila tidak ganti password</small><small class="text-danger"><?= form_error('password1'); ?></small>
                                <input type="password1" class="form-control" id="password1" name="password1" placeholder="Masukan password baru">
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