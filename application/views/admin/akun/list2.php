<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');
?>
<div class="row">
	<div class="col-md-7">
		<div class="card card-info">
              <div class="card-header">
              <h4 class="alert alert-info">Update Profil Anda</h4>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form">
                <div class="card-body">
				<p class="text-center">
					<img src="<?php if($user->gambar =="") {
				 	echo $this->website->icon();
				 	}else{ 
					 	echo base_url('assets/upload/user/thumbs/'.$user->gambar); }?>"style="max-width: 150px; height: auto;" class="img img-circle img-thumbnail">
				</p>

				<?php echo form_open_multipart(base_url('admin/akun'),'id="tambah"') ?>

                  <div class="form-group row">
                    <label class="control-label">Nama Lengkap</label>
                    <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Lengkap" value="<?php echo $user->nama ?>">
                  </div>
                  <div class="form-group row">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Email" value="<?php echo $user->email ?>" readonly>
                  </div>
                  <div class="form-group row">
                    <label>Level Akses</label>
                    <input type="text" name="akses_level" class="form-control" placeholder="Akses level" value="<?php echo $user->akses_level == 1 ? "SuperAdmin" : "Admin"?>" readonly>
                  </div>
                  <div class="form-group row">
                    <label>Upload Foto/Logo</label>
                    <input type="file" name="gambar" id="gambar" class="form-control" placeholder="gambar" value="<?php echo $user->gambar ?>">
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <div class="form-group row">
                    <label class="control-label"></label>
                    <div class="form-group">
                        <button type="submit" name="submit" class="btn btn-primary"><i class="fa fa-check"></i> Simpan</button>
                        <button type="reset" name="reset" class="btn btn-warning"><i class="fa fa-rotate-left"></i> Atur ulang</button>
                    </div>
                    </div>
                </div>
              </form>
            </div>
            <!-- /.card -->
		<?php echo form_close(); ?>
	</div>



	<div class="col-md-5">
		<div class="card card-info">
              <div class="card-header">
                <h4 class="card-title">Ganti Password</h4>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form">
                <div class="card-body">

				<?php echo form_open_multipart(base_url('admin/akun/password'),'id="tambah"') ?>

                  <div class="form-group">
                    <label>Password baru <span class="text-danger">*</span></label>
					<input type="password" name="password" id="password" class="form-control" placeholder="Password baru" value="<?php echo set_value('password') ?>" minlength="6" maxlength="32" required>
                  </div>
                  <div class="form-group">
                    <label>Konfirmasi Password <span class="text-danger">*</span></label>
					<input type="password" name="passconf" id="passconf" class="form-control" placeholder="Konfirmasi Password " value="<?php echo set_value('passconf') ?>" minlength="6" maxlength="32" required>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
					<button type="submit" name="submit" class="btn btn-success"><i class="fa fa-lock"></i> Ganti Password</button>
					<button type="reset" name="reset" class="btn btn-warning"><i class="fa fa-rotate-left"></i> Atur ulang</button>
                </div>
              </form>
            </div>
		<?php echo form_close(); ?>
	</div>
</div>