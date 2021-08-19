<?php
// Notifikasi error
echo validation_errors('<p class="alert alert-warning">','</p>');
?>
<div class="row">
<div class="col-md-12">
<h4 class="alert alert-info">Ganti Password</h4>

<?php echo form_open_multipart(base_url('admin/akun/password'),'id="tambah"') ?>

<div class="form-group row">
	<label class="col-sm-4 control-label text-right">Password baru<span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="password" name="password" id="password" class="form-control" placeholder="Password baru" value="<?php echo set_value('password') ?>" minlength="6" maxlength="32" required>
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
					<button type="submit" name="submit" class="btn btn-success"><i class="fa fa-lock"></i> Ganti Password</button>
					<button type="reset" name="reset" class="btn btn-warning"><i class="fa fa-rotate-left"></i> Atur ulang</button>
				</div>
			</div>
		</div>
		<?php echo form_close(); ?>
</div>
</div>