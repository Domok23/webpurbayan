<!-- Start About Greenforest Section -->
<?php
?>
<section class="bg-about-greenforest">
    <div class="container" >
        <div class="row">
            <div class="about-greenforest">
                <div class="row">
                    <div class="col-md-12">
                        <div class="about-greenforest-content">
                            <div class="section-header-about" data-aos="fade-down" data-aos-duration="1500" data-aos-offset="300">
                                <h2><?php echo $site->namaweb ?></h2>
                            </div>
                            <p class="text-justify" data-aos="zoom-in" data-aos-duration="1000"><?php echo character_limiter(strip_tags($site->profil), 575); ?></p>
                                <a href="<?php echo base_url('profil'); ?>" class="btn btn-default" data-aos="zoom-in" data-aos-duration="1000"><i class="fad fa-chevron-right"></i> Selengkapnya</a>
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
