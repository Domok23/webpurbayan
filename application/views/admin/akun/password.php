<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');
?>
<div class="row">
<div class="col-md-12">
<h4 class="alert alert-info">Ganti Password</h4>

<?php echo form_open_multipart(base_url('admin/akun/password'),'id="tambah"') ?>

<div class="form-group row mt-3">
	<label class="col-sm-4 control-label text-right">Password saat ini<span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="password" name="current_password" id="current_password" class="form-control" placeholder="Password saat ini" value="<?php echo set_value('current_password') ?>" minlength="6" maxlength="32" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-sm-4 control-label text-right">Password baru<span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="password" name="new_password" id="new_password" class="form-control" placeholder="Password Baru" value="<?php echo set_value('new_password') ?>" minlength="6" maxlength="32" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-sm-4 control-label text-right">Konfirmasi Password <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="password" name="passconf" id="passconf" class="form-control" placeholder="Konfirmasi Password " value="<?php echo set_value('passconf') ?>" minlength="6" maxlength="32" required>
	</div>
</div>

		<div class="form-group row">
			<label class="col-sm-4 control-label"></label>
			<div class="col-sm-8">
				<div class="form-group">
					<button type="submit" name="submit" class="btn btn-success"><i class="fad fa-lock-alt"></i> Ganti Password</button>
					<button type="reset" name="reset" class="btn btn-warning"><i class="fad fa-undo"></i> Atur ulang</button>
				</div>
			</div>
		</div>
		<?php echo form_close(); ?>
</div>
</div>