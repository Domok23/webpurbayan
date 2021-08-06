
<?php
// Session 
if($this->session->flashdata('sukses')) { 
	echo '<div class="alert alert-success  alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>';
	echo $this->session->flashdata('sukses');
	echo '</div>';
} 
// Error
echo validation_errors('<div class="alert alert-success  alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><div class="alert alert-success">','</div></div>'); 
?>

<?php echo form_open(base_url('admin/konfigurasi')) ?>
<div class="row">
<input type="hidden" name="id_konfigurasi" value="<?php echo $site->id_konfigurasi ?>">

<div class="col-md-12">
 <div class="form-group">
    <label>Ringkasan instansi</label>
    <textarea name="tentang" class="form-control" placeholder="Summary of the company" id="isi"><?php echo $site->tentang ?></textarea>
    </div>

    <div class="form-group">
    <label>Alamat</label>
    <textarea name="alamat" rows="3" class="form-control textarea" placeholder="Alamat perusahaan/organisasi"><?php echo $site->alamat ?></textarea>
    </div>
</div>

<div class="col-md-6">
	<h3>Informasi dasar:</h3><hr>
    <div class="form-group">
    <label>Nama Instansi</label>
    <input type="text" name="namaweb" placeholder="Nama organisasi/perusahaan" value="<?php echo $site->namaweb ?>" required class="form-control">
    </div>

    <div class="form-group">
    <label>Singkatan</label>
    <input type="text" name="singkatan" placeholder="Singkatan organisasi/perusahaan" value="<?php echo $site->singkatan ?>" required class="form-control">
    </div>
    
    <div class="form-group">
    <label>Tagline</label>
    <input type="text" name="tagline" placeholder="Company tagline/motto" value="<?php echo $site->tagline ?>" class="form-control">
    </div>
    
    <div class="form-group">
    <label>Alamat Website</label>
    <input type="url" name="website" placeholder="<?php echo base_url() ?>" value="<?php echo $site->website ?>" class="form-control">
    </div>
    
    <div class="form-group">
    <label>Official email</label>
    <input type="email" name="email" placeholder="youremail@address.com" value="<?php echo $site->email ?>" class="form-control" required>
    </div>
    
     
    
     <div class="form-group">
    <label>Nomor Telepon</label>
    <input type="text" name="telepon" placeholder="021-000000" value="<?php echo $site->telepon ?>" class="form-control">
    </div>

     <div class="form-group">
    <label>Whatsapp</label>
    <input type="text" name="hp" placeholder="021-000000" value="<?php echo $site->hp ?>" class="form-control">
    </div>
    
    
</div>

<div class="col-md-6">
    

<h3>Sosial Media:</h3><hr>
    
    <div class="form-group">
    <label>Facebook <i class="fa fa-facebook"></i></label>
    <input type="url" name="facebook" placeholder="http://facebook.com/namakamu" value="<?php echo $site->facebook ?>" class="form-control">
    </div>
    
    <div class="form-group">
    <label>Twitter <i class="fa fa-twitter"></i></label>
   <input type="url" name="twitter" placeholder="http://twitter.com/namakamu" value="<?php echo $site->twitter ?>" class="form-control">
    </div>
    
     <div class="form-group">
    <label>Instagram <i class="fa fa-instagram"></i></label>
   <input type="url" name="instagram" placeholder="http://instagram.com/namakamu" value="<?php echo $site->instagram ?>" class="form-control">
    </div>

    <hr>
    <div class="form-group">
    <label>Google Map</label>
    <textarea name="google_map" rows="5" class="form-control" placeholder="Kode dari Google Map"><?php echo $site->google_map ?></textarea>
    </div>
    
    <div class="form-group map">
        <style type="text/css" media="screen">
            iframe {
                width: 100%;
                max-height: 200px;
            }
        </style>
    <?php echo $site->google_map ?>
    <hr>
    <div class="md-col-12">
        <input type="submit" name="submit" value="Simpan konfigurasi" class="btn btn-primary">
        <input type="reset" name="reset" value="Atur ulang" class="btn btn-warning">
    </div>
    </div>
</div>


</div>
</form>

