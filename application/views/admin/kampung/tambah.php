
<?php
// Validasi error
echo validation_errors('<div class="alert alert-warning">','</div>');

// Error upload
if(isset($error)) {
	echo '<div class="alert alert-warning">';
	echo $error;
	echo '</div>';
}

// Form open
echo form_open_multipart(base_url('admin/kampung/tambah'));
?>

<div class="row">

<div class="col-md-8">
<div class="form-group form-group-lg">
<label>Nama kampung</label>
<input type="text" name="judul_kampung" class="form-control" placeholder="Nama kampung" value="<?php echo set_value('judul_kampung') ?>">
</div>
</div>

<div class="col-md-4">
<div class="form-group form-group-lg">
<label>Icon kampung</label>
<input type="text" name="icon" class="form-control" placeholder="Icon kampung" value="<?php echo set_value('icon') ?>">
</div>
</div>

  <div class="col-md-4">
  <div class="form-group form-group-lg">
    <label>Tanggal Publish</label>
    <input type="text" name="tanggal_publish" class="form-control tanggal" placeholder="Tanggal publikasi" value="<?php if(isset($_POST['tanggal_publish'])) { echo set_value('tanggal_publish'); }else{ echo date('d-m-Y'); } ?>" data-date-format="dd-mm-yyyy">
  </div>
  </div>

  <div class="col-md-4">
  <div class="form-group form-group-lg">
  <label>Jam Publish</label>
  <input type="text" name="jam_publish" class="form-control time-picker" placeholder="Jam publikasi" value="<?php if(isset($_POST['jam_publish'])) { echo set_value('jam_publish'); }else{ echo date('H:i:s'); } ?>">
  </div>
  </div>


<div class="col-md-4">
<div class="form-group form-group-lg">
<label>Status kampung</label>
<select name="status_kampung" class="form-control">
	<option value="Publish">Publikasikan</option>
	<option value="Draft">Simpan sebagai draft</option>}
</select>
</div>
</div>

<div class="col-md-4">
<div class="form-group">
<label>Jenis kampung</label>
<select name="jenis_kampung" class="form-control">
	<option value="Kampung">Kampung</option>
  <option value="Kampung1">Kampung1</option>
</select>
</div>
</div>


<div class="col-md-4">
<div class="form-group">
<label>Urutan</label>
<input type="number" name="urutan" class="form-control" placeholder="Urutan" value="<?php echo set_value('urutan') ?>">
</div>
</div>

<div class="col-md-4">
<div class="form-group">
<label>Upload gambar</label>
<input type="file" name="gambar" class="form-control" placeholder="Upload gambar" required>
</div>
</div>


<div class="col-md-12">
<div class="form-group">
<label>Keywords dan Ringkasan (untuk pencarian Google)</label>
<textarea name="keywords" class="form-control" placeholder="Keywords (untuk pencarian Google)"><?php echo set_value('keywords') ?></textarea>
</div>

<div class="form-group">
<label>Profil kampung </label>
<textarea name="isi" class="form-control konten" id="isi" placeholder="Profil kampung"><?php echo set_value('isi') ?></textarea>
</div>

<div class="form-group text-right">
<input type="reset" name="reset" class="btn btn-warning" value="Atur ulang">
<button type="submit" name="submit" class="btn btn-primary"><i class="fas fa-check"></i> Simpan data</button>
</div>
</div>

<?php
// Form close
echo form_close();
?>

</div>

<script>
  $('body').on('click', '[data-toggle="modal"]', function(){
        $($(this).data("target")+' .modal-body').load($(this).data("remote"));
    });  
</script>