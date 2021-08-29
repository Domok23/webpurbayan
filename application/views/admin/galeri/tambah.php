
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
<div class="col-md-12">
<div class="form-group form-group-lg">
<label>Judul galeri <span class="text-danger">*</span></label>
<input type="text" name="judul_galeri" class="form-control" placeholder="Judul galeri" value="<?php echo set_value('judul_galeri') ?>" required>
</div>
</div>


<div class="col-md-3">
<div class="form-group">
<label>Kategori Galeri</label>
<select name="id_kategori_galeri" class="form-control">
	<?php foreach($kategori_galeri as $kategori_galeri) { ?>
	<option value="<?php echo $kategori_galeri->id_kategori_galeri ?>"><?php echo $kategori_galeri->nama_kategori_galeri ?></option>
	<?php } ?>
</select>
</div>
</div>

<div class="col-md-4">
<div class="form-group">
<label>Jenis/Posisi Galeri</label>
<select name="jenis_galeri" class="form-control">
	<option value="Galeri">Galeri Foto</option>
	<option value="Homepage">Homepage - Gambar Slider</option>
</select>
</div>
</div>

<div class="col-md-5">
<div class="form-group">
<label>Upload gambar <span class="text-danger">*</span></label>
<input type="file" name="gambar" class="form-control" required="required" placeholder="Upload gambar">
</div>
</div>

<div class="col-md-12">
<div class="form-group">
<label>Link/Website Sumber Gambar</label>
<input type="url" name="website" class="form-control" placeholder="Link sumber (jika ada)" value="<?php echo set_value('website') ?>">
</div>
</div>

<div class="col-md-12">


<div class="form-group">
<label>Keterangan</label>
<textarea name="isi" id="isi" class="form-control konten" placeholder="Isi galeri"><?php echo set_value('isi') ?></textarea>
</div>

<div class="md-col-12 text-right">
<input type="reset" name="reset" class="btn btn-warning" value="Atur ulang">
<input type="submit" name="submit" class="btn btn-primary" value="Simpan data">
</div>

</div>
</div>
<?php
// Form close
echo form_close();
?>