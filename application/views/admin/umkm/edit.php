<script src="<?php echo base_url('assets/ckeditor/ckeditor.js'); ?>"></script>
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
echo form_open_multipart(base_url('admin/umkm/edit/'.$umkm->id_umkm));
?>
<div class="row">

<div class="col-md-8">
<div class="form-group form-group-lg">
<label>Nama UMKM</label>
<input type="text" name="judul_umkm" class="form-control" placeholder="Nama UMKM" required="required" value="<?php echo $umkm->judul_umkm ?>">
</div>
</div>

<div class="col-md-4">
<div class="form-group form-group-lg">
<label>Icon UMKM</label>
<input type="text" name="icon" class="form-control" placeholder="Icon UMKM" value="<?php echo $umkm->icon ?>">
</div>
</div>


  <div class="col-md-4">
  <div class="form-group form-group-lg">
    <label>Tanggal Publish</label>
    <input type="text" name="tanggal_publish" class="form-control tanggal" placeholder="Tanggal publikasi" value="<?php if(isset($_POST['tanggal_publish'])) { echo set_value('tanggal_publish'); }else{ echo date('Y-m-d',strtotime($umkm->tanggal_publish)); } ?>" data-date-format="dd-mm-yyyy">
  </div>
  </div>

  <div class="col-md-4">
  <div class="form-group form-group-lg">
  <label>Jam Publish</label>
  <input type="text" name="jam_publish" class="form-control time-picker" placeholder="Jam publikasi" value="<?php if(isset($_POST['jam_publish'])) { echo set_value('jam_publish'); }else{ echo date('H:i:s',strtotime($umkm->tanggal_publish)); } ?>">
  </div>
  </div>

<div class="col-md-4">
<div class="form-group form-group-lg">
<label>Status UMKM</label>
<select name="status_umkm" class="form-control">
	<option value="Publish">Publikasikan</option>
	<option value="Draft" <?php if($umkm->status_umkm=="Draft") { echo "selected"; } ?>>Simpan sebagai draft</option>
</select>
</div>
</div>


<div class="col-md-4">
<div class="form-group">
<label>Jenis UMKM</label>
<select name="jenis_umkm" class="form-control">
	<option value="Umkm"  <?php if($umkm->jenis_umkm=="Umkm") { echo "selected"; } ?>>UMKM</option>
  <option value="Umkm1" <?php if($umkm->jenis_umkm=="Umkm1") { echo "selected"; } ?>>UMKM1</option>
</select>
</div>
</div>

<div class="col-md-4">
<div class="form-group">
<label>Urutan</label>
<input type="number" name="urutan" class="form-control" placeholder="Urutan" value="<?php echo $umkm->urutan ?>" required>
</div>
</div>

<div class="col-md-4">
<div class="form-group">
<label>Upload gambar</label>
<input type="file" name="gambar" class="form-control" placeholder="Upload gambar" value="<?php echo $umkm->gambar ?>">
</div>
</div>


<div class="col-md-12">

<div class="form-group">
<label>Keywords dan Ringkasan</label>
<textarea name="keywords" class="form-control" placeholder="Keywords"><?php echo $umkm->keywords ?></textarea>
</div>

<div class="form-group">
<label>Tentang UMKM</label>
<textarea name="isi" class="form-control konten" id="isi" placeholder="Tentang UMKM" required><?php echo $umkm->isi ?></textarea>
</div>

<div class="form-group text-right">
<input type="reset" name="reset" class="btn btn-warning" value="Atur ulang">
<button type="submit" name="submit" class="btn btn-primary">
  <i class="fas fa-check"></i> Simpan Data
</button>
</div>

</div>

<?php
// Form close
echo form_close();
?>

            <!-- Modal -->
<div class="modal fade" id="file" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        </div><!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

   <!-- Modal -->
<div class="modal fade" id="gambar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        </div><!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

</div>