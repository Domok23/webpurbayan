<button class="btn btn-success" data-toggle="modal" data-target="#Tambah">
    <i class="fa fa-plus"></i> Tambah
</button>
<div class="modal fade" id="Tambah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
    <h4 class="modal-title" id="myModalLabel">Tambah Data?</h4>
</div>
<div class="modal-body">
    
<?php
// Validasi error
echo validation_errors('<div class="alert alert-warning">','</div>');

// Form buka 
echo form_open(base_url('admin/kategori_galeri'));
?>

<div class="form-group">
<input type="text" name="nama_kategori_galeri" class="form-control" placeholder="Nama kategori galeri" value="<?php echo set_value('nama_kategori_galeri') ?>" required>
</div>

<div class="form-group">
<input type="number" name="urutan" class="form-control" placeholder="Urutan" value="<?php echo set_value('urutan') ?>" required>
</div>

<div class="form-group text-right">
<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Batal</button>
<input type="submit" name="submit" class="btn btn-success btn-sm" value="Simpan Data">
</div>
<div class="clearfix"></div>

<?php
// Form close 
echo form_close();
?>

</div>
</div>
</div>
</div>
