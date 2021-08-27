
<?php
// Session 
if($this->session->flashdata('sukses')) { 
	echo '<div class="alert alert-success  alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>';
	echo $this->session->flashdata('sukses');
	echo '</div>';
}
?>

<?php echo form_open(base_url('admin/konfigurasi')) ?>
<div class="row">
<input type="hidden" name="id_konfigurasi" value="<?php echo $site->id_konfigurasi ?>">

<div class="col-md-12">
 <div class="form-group">
    <label>Profil Instansi</label>
    <textarea name="profil" class="form-control" placeholder=" Deskripsikan profil atau tentang Instansi" id="isi"><?php echo $site->profil?></textarea>
    </div>

    
</div>

<div class="col-md-6">
	<h3>Informasi dasar:</h3><hr>

    <div class="form-group">
    <label>Nama Instansi</label>
    <input type="text" name="namaweb" placeholder="Nama Instansi" value="<?php echo $site->namaweb ?>" required class="form-control">
    </div>
    
    <div class="form-group">
    <label>Alamat</label>
    <input type="text" name="alamat" placeholder="Alamat Lengkap" value="<?php echo $site->alamat ?>" required class="form-control">
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
    <input type="text" name="telepon" placeholder="Nomor Telepon yang bisa dihubungi" value="<?php echo $site->telepon ?>" class="form-control">
    </div>

     <div class="form-group">
    <label>Whatsapp</label>
    <input type="text" name="hp" placeholder="Sertakan kode negara, ex: +62856xxxxxxxx" value="<?php echo $site->hp ?>" class="form-control" required>
    </div>
    
    
</div>

<div class="col-md-6">
    

<h3>Sosial Media:</h3><hr>
    
    <div class="form-group">
    <label>Facebook <i class="fa fa-facebook"></i></label>
    <input type="url" name="facebook" placeholder="https://facebook.com/" value="<?php echo $site->facebook ?>" class="form-control" required>
    </div>
    
    <div class="form-group">
    <label>Twitter <i class="fa fa-twitter"></i></label>
    <input type="url" name="twitter" placeholder="https://twitter.com/" value="<?php echo $site->twitter ?>" class="form-control" required>
    </div>
    
    <div class="form-group">
    <label>Instagram <i class="fa fa-instagram"></i></label>
    <input type="url" name="instagram" placeholder="https://instagram.com/" value="<?php echo $site->instagram ?>" class="form-control"required>
    </div>

    <div class="form-group">
    <label>Google Map</label>
    <textarea name="google_map" rows="5" class="form-control required" placeholder="Kode dari Google Map"><?php echo $site->google_map ?></textarea>
    </div>
    
    <div class="form-group map">
        <style type="text/css" media="screen">
            iframe {
                width: 100%;
                max-height: 208px;
            }
        </style>
    <?php echo $site->google_map ?>
    <hr>
    <div class="md-col-12 text-right">
        <input type="submit" name="submit" value="Simpan konfigurasi" class="btn btn-primary">
        <input type="reset" name="reset" value="Atur ulang" class="btn btn-warning">
    </div>
    </div>
</div>


</div>
</form>

