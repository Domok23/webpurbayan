<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');

// Form open
echo form_open(base_url('admin/user/tambah'));
?>
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<label>Nama Lengkap <span class="text-danger">*</span></label>
			<input type="text" name="nama" class="form-control form-control-lg" value="<?php echo set_value('nama') ?>" placeholder="Nama Lengkap" required>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="form-group">
			<label>Email <span class="text-danger">*</span></label>
			<input type="email" name="email" class="form-control form-control-lg" value="<?php echo set_value('email') ?>" placeholder="Email" required>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="form-group">
			<label>Level Hak Akses <span class="text-danger">*</span></label>
			<select name="akses_level" class="form-control form-control-lg">
				<option value=1>SuperAdmin</option>
				<option value=2>Admin</option>
			</select>
		</div>
	</div>

	<div class="col-md-6">
		<div class="form-group">
			<label>Password <span class="text-danger">*</span></label>
			<input type="password" name="password" class="form-control form-control-lg" value="<?php echo set_value('password') ?>" placeholder="Password" required>
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