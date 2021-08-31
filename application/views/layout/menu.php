<?php 
$site                       = $this->konfigurasi_model->listing(); 
$site_nav                   = $this->konfigurasi_model->listing();
$nav_berita                 = $this->nav_model->nav_berita();
$nav_kampung                = $this->nav_model->nav_kampung();
?>
<!-- Start Menu -->
<div class="bg-main-menu menu-scroll">
<div class="container">
<div class="row">
<div class="main-menu">
<a class="show-res-logo" href="<?php echo base_url() ?>"><img src="<?php echo $this->website->logo() ?>" alt="logo" class="img-responsive" style="max-height: 76px; width: auto;" /></a>
<nav class="navbar">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
        <a class="navbar-brand" href="<?php echo base_url() ?>"><img src="<?php echo $this->website->logo() ?>" alt="logo" class="img-responsive" style="max-height: 56px; width: auto;" /></a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <!-- BERANDA -->
            <li><a href="<?php echo base_url() ?>" class="active">BERANDA</a></li>

            <!-- PROFIL -->
            <li><a href="<?php echo base_url('profil') ?>">PROFIL</a></li>

            <!-- KAMPUNG -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">KAMPUNG WISATA<span class="caret"></span></a>
                <ul class="dropdown-menu sub-menu">
                    <?php foreach($nav_kampung as $nav_kampung) { ?>
                        <li class="sub-active"><a href="<?php echo base_url('kampung/read/'.$nav_kampung->slug_kampung) ?>"><i class="fad fa-angle-double-right mr-2" aria-hidden="true"></i> <?php echo $nav_kampung->judul_kampung ?></a></li>
                        <?php } ?> 
                </ul>
            
            </li>

            <!-- berita -->
            <li><a href="<?php echo base_url('berita') ?>">BERITA</a></li>
            
            <!-- galeri -->
            <li><a href="<?php echo base_url('galeri') ?>">GALERI</a></li>
            
            <!-- kontak  -->
            <li><a href="<?php echo base_url('kontak') ?>">KONTAK</a></li>
        </ul>

        <div class="menu-right-option pull-right">
            <div class="search-box">
                <i class="fad fa-search first_click" aria-hidden="true" style="display: block;"></i>
                <i class="fad fa-times second_click" aria-hidden="true" style="display: none;"></i>
            </div>
            <div class="search-box-text">
                <form action="http://demos.codexcoder.com/labartisan/html/GreenForest/search">
                    <input type="text" name="search" id="all-search" placeholder="Search Here">
                </form>
            </div>
        </div>
        <!-- .header-search-box -->
    </div>
    <!-- .navbar-collapse -->
</nav>
</div>
<!-- .main-menu -->
</div>
<!-- .row -->
</div>
<!-- .container -->
</div>
<!-- .bg-main-menu -->


