<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');
// Form open
echo form_open(base_url('admin/user/edit/'.$user->id_user));
?>
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<label>Nama Lengkap <span class="text-danger">*</span></label>
			<input type="text" name="nama" class="form-control form-control-lg" value="<?php echo $user->nama ?>" placeholder="Nama Lengkap">
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
			<label>Email</label>
			<input type="email" name="email" class="form-control form-control-lg" value="<?php echo $user->email ?>" placeholder="Email" readonly>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
			<label>Level Hak Akses <span class="text-danger">*</span></label>
			<select name="akses_level" class="form-control form-control-lg">
				<option value=1 <?php if($user->akses_level==1) { echo "selected"; } ?>>SuperAdmin</option>
				<option value=2 <?php if($user->akses_level==2) { echo "selected"; } ?>>Admin</option>
			</select>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
			<label>Tanggal Daftar</label>
			<input type="text" name="tanggal_post" class="form-control form-control-lg" value="<?php if(isset($_POST['tanggal_post'])) { echo set_value('tanggal_post'); }else{ echo date('d F Y',strtotime($user->tanggal_post)); } ?>" data-date-format="dd-mm-yyyy" readonly>
		</div>
	</div>

	

	<div class="col-md-12">
		<div class="form-group">
			<button class="btn btn-primary" name="submit" type="submit">
				<i class="fa fa-check"></i> Simpan
			</button>
			<button class="btn btn-default" name="reset" type="reset">
				<i class="fa fa-rotate-left"></i> Reset
			</button>
		</div>
	</div>
</div>
<?php 
// Form close
echo form_close();
?>