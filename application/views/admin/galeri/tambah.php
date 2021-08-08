
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
echo form_open_multipart(base_url('admin/galeri/tambah'));
?>
<div class="row">
<div class="col-md-4">

<div class="form-group form-group-lg">
<label>Judul galeri</label>
<input type="text" name="judul_galeri" class="form-control" placeholder="Judul galeri" value="<?php echo set_value('judul_galeri') ?>">
</div>

</div>
</div>

<div class="row col-md-4">

<div class="form-group form-group-lg">
<label>Kategori Galeri</label>
<select name="id_kategori_galeri" class="form-control">
	<?php foreach($kategori_galeri as $kategori_galeri) { ?>
	<option value="<?php echo $kategori_galeri->id_kategori_galeri ?>"><?php echo $kategori_galeri->nama_kategori_galeri ?></option>
	<?php } ?>
</select>
</div>

<div class="form-group">
<label>Jenis/Posisi Galeri</label>
<select name="jenis_galeri" class="form-control">
	<option value="Galeri">Galeri Foto</option>
	<option value="Homepage">Homepage - Gambar Slider</option>
</select>
</div>

</div>

<div class="row col-md-4">
<div class="form-group">
<label>Upload gambar</label>
<input type="file" name="gambar" class="form-control" required="required" placeholder="Upload gambar">
</div>
</div>

<div class="col-md-12">

<div class="form-group">
<label>Isi galeri</label>
<textarea name="isi" id="isi" class="form-control konten" placeholder="Isi galeri"><?php echo set_value('isi') ?></textarea>
</div>

<div class="form-group">
<label>Link / website yang terkait dengan Galeri</label>
<input type="url" name="website" class="form-control" placeholder="http://website.com" value="<?php echo set_value('website') ?>">
</div>

<div class="md-col-12">
<input type="submit" name="submit" class="btn btn-primary" value="Simpan data">
<input type="reset" name="reset" class="btn btn-warning" value="Atur ulang">
</div>

</div>
</div>
<?php
// Form close
echo form_close();
?>