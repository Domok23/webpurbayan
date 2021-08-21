<script>
  $("button").click(function(){
    $("textarea").select();
    document.execCommand('copy');
});
</script>
<?php
echo form_open(base_url('admin/galeri/proses'));
?>
<p class="md-col-12">
  <a href="<?php echo base_url('admin/galeri/tambah') ?>" class="btn btn-success">
  <i class="fa fa-plus"></i> Tambah Galeri</a>

  <button class="btn btn-danger tombol-hapus" type="submit" name="hapus" onclick="return confirm('Apakah anda yakin akan menghapus data?');">
      <i class="fa fa-trash-o"></i> Hapus
    </button> 

</p>


<div class="table-responsive mailbox-messages">
<table id="example1" class="display table table-bordered table-hover" cellspacing="0" width="100%">
<thead>
<tr>
    <th>
        <div class="mailbox-controls">
            <!-- Check all button -->
            <button type="button" class="btn btn-default btn-xs checkbox-toggle"><i class="fa fa-square-o"></i>
            </button>
        </div>
    </th>
    <th>Gambar</th>
    <th>Judul</th>
    <th>Kategori - Posisi</th>
    <th>Website</th>
    <th>Author</th>
    <th>Tanggal</th>
    <th width="15%">Action</th>
</tr>
</thead>
<tbody>

<?php $i=1; foreach($galeri as $galeri) { ?>

<tr class="odd gradeX">
    <td>
      <div class="mailbox-star text-center"><div class="text-center">
        <input type="checkbox" class="icheckbox_flat-blue " name="id_galeri[]" value="<?php echo $galeri->id_galeri ?>">
        <span class="checkmark"></span>
      </div>
    </td>
    <td>
      <img src="<?php echo base_url('assets/upload/image/thumbs/'.$galeri->gambar) ?>" width="60">
    </td>
    <td><?php echo $galeri->judul_galeri ?>
      <br>
      <textarea name="aa"><?php echo base_url('assets/upload/image/'.$galeri->gambar) ?></textarea>
      </small>

    </td>
    <td><?php echo $galeri->nama_kategori_galeri ?> - <?php echo $galeri->jenis_galeri ?></td>
    <td><?php echo $galeri->website ?></td>
    <td><?php echo $galeri->nama ?></td>
    <td><?php echo $galeri->tanggal ?></td>
    <td>
      <div class="md-col-12">

      <a href="<?php echo base_url('admin/galeri/edit/'.$galeri->id_galeri) ?>" 
      class="btn btn-warning btn-xs"><i class="fa fa-edit"></i> Edit</a>

       <a href="<?php echo base_url('admin/galeri/delete/'.$galeri->id_galeri) ?>" 
      class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin akan menghapus data?');"><i class="fa fa-trash-o"></i> Hapus</a>
    </div>
    </td>
</tr>

<?php $i++; } ?>

</tbody>
</table>