<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');
?>
<div class="row">
	<div class="col-md-12">
		<h4 class="alert alert-info">Update Profil Anda</h4>
		<p class="text-center">
			<img src="<?php if($user->gambar =="") { echo base_url('assets/upload/user/default.png'); }else{ echo base_url('assets/upload/user/thumbs/'.$user->gambar); }?>"style="max-width: 150px; height: auto;" class="img img-circle img-thumbnail">
		</p>

		<?php echo form_open_multipart(base_url('admin/akun'),'id="tambah"') ?>

		<div class="form-group row">
			<label class="col-sm-3 control-label text-right">Nama</label>
			<div class="col-sm-9">
				<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Pengguna" value="<?php echo $user->nama ?>">
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-3 control-label text-right">Email</label>
			<div class="col-sm-9">
				<input type="email" name="email" class="form-control" placeholder="Email" value="<?php echo $user->email ?>" readonly>
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-3 control-label text-right">Level Hak Akses</label>
			<div class="col-sm-9">
				<input type="text" name="akses_level" class="form-control" placeholder="Akses level" value="<?php echo $user->akses_level == 1 ? "SuperAdmin" : "Admin"?>" readonly>
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-3 control-label text-right">Upload Foto/Logo</label>
			<div class="col-sm-9">
				<input type="file" name="gambar" id="gambar" class="form-control" placeholder="gambar" value="<?php echo $user->gambar ?>">
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-3 control-label"></label>
			<div class="col-sm-9">
				<div class="form-group">
					<button type="submit" name="submit" class="btn btn-primary"><i class="fa fa-check"></i> Simpan</button>
					<button type="reset" name="reset" class="btn btn-warning"><i class="fa fa-rotate-left"></i> Atur ulang</button>
				</div>
			</div>
		</div>
		<?php echo form_close(); ?>
	</div>
</div>