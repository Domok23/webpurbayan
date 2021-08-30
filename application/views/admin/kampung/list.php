<?php
$site   = $this->konfigurasi_model->listing();
echo form_open(base_url('admin/kampung/proses'));
?>
<p class="md-col-12">
  <a href="<?php echo base_url('admin/kampung/tambah') ?>" class="btn btn-success">
  <i class="fas fa-plus mr-1"></i> Tambah Kampung</a>

  <button class="btn btn-primary" type="submit" name="publish" onClick="check();" >
    <i class="fad fa-paper-plane mr-1"></i> Publikasikan
  </button>
  
  <button class="btn btn-warning" type="submit" name="draft" onClick="check();" >
      <i class="fad fa-times-circle mr-1"></i> Jangan Publikasikan
  </button>


  
  <button class="btn btn-danger" type="submit" name="hapus" onclick="return confirm('Apakah anda yakin akan menghapus data?');" >
      <i class="fad fa-trash-alt mr-1"></i> Hapus
    </button> 
<?php 
$url_navigasi = $this->uri->segment(2); 
if($this->uri->segment(3) != "") { 
 ?>
<a href="<?php echo base_url('admin/'.$url_navigasi) ?>"  class="btn btn-primary">
 <i class="fad fa-chevron-circle-left mr-1"></i> Kembali</a>
 <?php } ?>
</p>
<div class="table-responsive mailbox-messages">
<table id="example1" class="display table table-bordered table-hover" cellspacing="0" width="100%">
<thead>
<tr>
    <th width="5%">
        <div class="mailbox-controls">
            <!-- Check all button -->
            <button type="button" class="btn btn-default btn-xs checkbox-toggle"><i class="far fa-check-square"></i>
            </button>
        </div>
    </th>
    <th width="10%">GAMBAR</th>
    <th width="30%">JUDUL</th>
    <th width="10%">JENIS</th>
    <th width="10%">STATUS</th>
    <th width="15%">AUTHOR</th>
    <th width="15%">ACTION</th>
</tr>
</thead>
<tbody>

<?php $i=1; foreach($kampung as $kampung) { ?>

<tr class="odd gradeX">
    <td>
      <div class="mailbox-star text-center"><div class="text-center">
        <input type="checkbox" class="icheckbox_flat-blue " name="id_kampung[]" value="<?php echo $kampung->id_kampung ?>">
        <span class="checkmark"></span>
      </div>
    </td>
    <td>
    <?php if($kampung->gambar!="") { ?>
      <img src="<?php echo base_url('assets/upload/image/thumbs/'.$kampung->gambar) ?>" class="img img-thumbnail img-responsive" width="60">
      <?php }else{ ?>
      <img src="<?php echo base_url('assets/upload/image/thumbs/'.$site->icon) ?>" class="img img-thumbnail img-responsive" width="60">
      <?php } ?>
    </td>
    <td>
    <a href="<?php echo base_url('admin/kampung/edit/'.$kampung->id_kampung) ?>">
    <?php echo $kampung->judul_kampung ?> <sup><i class="fad fa-edit"></i></sup>
    </a>
      <small>
        <br>Posted: <?php echo date('d M Y H:i: s',strtotime($kampung->tanggal_post)) ?>
        <br>Published: <?php echo date('d M Y H:i: s',strtotime($kampung->tanggal_publish)) ?>
        <br>Urutan: <?php echo $kampung->urutan ?>
        <br>Tgl posting: <?php echo date('d-m-Y',strtotime($kampung->tanggal_publish)) ?>
      </small>
    </td>
    <td>
    <a href="<?php echo base_url('admin/kampung/jenis_kampung/'.$kampung->jenis_kampung) ?>">
    <?php echo $kampung->jenis_kampung ?><sup></sup>
    </a></td>
    <td><a href="<?php echo base_url('admin/kampung/status_kampung/'.$kampung->status_kampung) ?>"><?php echo $kampung->status_kampung ?><sup></sup>
    </a></td>
    <td>
    <a href="<?php echo base_url('admin/kampung/author/'.$kampung->id_user) ?>">
    <?php echo $kampung->nama ?><sup></sup>
    </a></td>
    <td>
      <div class="md-col-12">
        <a href="<?php echo base_url('kampung/read/'.$kampung->slug_kampung) ?>" 
        class="btn btn-success btn-xs" target="_blank"><i class="fad fa-eye"></i> Lihat</a>

        <a href="<?php echo base_url('admin/kampung/edit/'.$kampung->id_kampung) ?>" 
        class="btn btn-warning btn-xs"><i class="fad fa-edit"></i> Edit</a>

        <a href="<?php echo base_url('admin/kampung/delete/'.$kampung->id_kampung) ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin akan menghapus data?');"><i class="fad fa-trash-alt"></i> Hapus</a>
      </div>
    </td>
</tr>

<?php $i++; } ?>

</tbody>
</table>
</div>
<?php echo form_close(); ?>