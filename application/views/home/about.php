<!-- Start About Greenforest Section -->
<?php 
$nav_profil = $this->nav_model->nav_profil();
?>
<section class="bg-about-greenforest">
    <div class="container">
        <div class="row">
            <div class="about-greenforest">
                <div class="row">
                    <div class="col-md-12">
                        <div class="about-greenforest-content">
                            <h2><?php echo $site->namaweb ?></h2>
                            <p class="text-justify"><?php echo character_limiter(strip_tags($site->tentang), 575); ?></p>
                            <?php foreach($nav_profil as $nav_profil) { ?>
                                <a href="<?php echo base_url('berita/profil/'.$nav_profil->slug_berita); ?>" class="btn btn-default"><i class="fa fa-chevron-right"></i> Selengkapnya</a>
                            <?php }?>
                        </div>
                        <!-- .about-greenforest-content -->
                    </div>
                    <!-- .col-md-8 -->
                    <!-- .col-md-4 -->
                </div>
            </div>
            <!-- .about-greenforest -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container -->
</section>
