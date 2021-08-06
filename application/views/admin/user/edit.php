<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');

// Form open
echo form_open(base_url('admin/user/edit/'.$user->id_user));
?>
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<label>Nama Admin <span class="text-danger">*</span></label>
			<input type="text" name="nama" class="form-control form-control-lg" value="<?php echo $user->nama ?>" placeholder="Nama User" required>
		</div>
	</div>
	<div class="col-md-3">
		<div class="form-group">
			<label>Username</label>
			<input type="text" name="username" class="form-control form-control-lg" value="<?php echo $user->username ?>" placeholder="username" readonly>
		</div>
	</div>
	
	
	<div class="col-md-6">
		<div class="form-group">
			<label>Email</label>
			<input type="email" name="email" class="form-control" value="<?php echo $user->email ?>" placeholder="Email" readonly>
		</div>
	</div>

	<div class="col-md-12">
		<div class="form-group">
				<button class="btn btn-success btn" name="submit" type="submit">
					<i class="fa fa-save"></i> Simpan
				</button>
				<button class="btn btn-warning btn" name="reset" type="reset">
					<i class="fa fa-times"></i> Reset
				</button>
				<a href="<?php echo base_url('admin/user') ?>" class="btn btn-info btn">
					<i class="fa fa-backward"></i> Kembali
				</a>
			
		</div>
	</div>
</div>
<?php 
// Form close
echo form_close();
?>