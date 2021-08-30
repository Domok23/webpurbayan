<?php
$site = $this->konfigurasi_model->listing();
?>
<!-- Start Pre-Loader-->
<div id="loading">
<div id="loading-center">
<div id="loading-center-absolute">
<div class="object" id="object_one"></div>
<div class="object" id="object_two"></div>
<div class="object" id="object_three"></div>
<div class="object" id="object_four"></div>
</div>
</div>
</div>
<!-- End Pre-Loader -->

<header class="header-style-2">
<div class="bg-header-top">
<div class="container">
<div class="row">
<div class="header-top" data-aos="zoom-in" data-aos-duration="1500">
    <div class="donate-option">
            <a href="https://wa.me/<?php echo str_replace('+','',$site->hp)?>?text=Apakah%20bisa%20dibantu?"><i class="fab fa-whatsapp" aria-hidden="true"></i> <?php echo $site->hp ?></a>
            <a href="tel:<?php echo $site->telepon ?>"><i class="fa fa-phone" aria-hidden="true"></i> <?php echo $site->telepon ?></a>
            <a href="<?php echo base_url('kontak') ?>"><i class="fa fa-envelope" aria-hidden="true"></i> Kontak</a>
    </div>
    <!-- .donate-option -->
</div>
<!-- .header-top -->
</div>
<!-- .header-top -->
</div>
<!-- .container -->
</div>
<!-- .bg-header-top -->
