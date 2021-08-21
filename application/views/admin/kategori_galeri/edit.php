<?php
// Validasi error
echo validation_errors('<div class="alert alert-warning">','</div>');

// Form buka 
echo form_open(base_url('admin/kategori_galeri/edit/'.$kategori_galeri->id_kategori_galeri));
?>

<div class="form-group">
<div class="col-sm-6">
<input type="text" name="nama_kategori_galeri" class="form-control" placeholder="Nama kategori galeri" value="<?php echo $kategori_galeri->nama_kategori_galeri ?>" required>
</div>
</div>

<div class="form-group">
<div class="col-sm-6">
<input type="number" name="urutan" class="form-control" placeholder="Urutan" value="<?php echo $kategori_galeri->urutan ?>" required>
</div>
</div>

<div class="form-group">
<div class="col-sm-6">
<input type="submit" name="submit" class="btn btn-success" value="Simpan Data">
</div>
</div>
<div class="clearfix"></div>

<?php
// Form close 
echo form_close();
?>
