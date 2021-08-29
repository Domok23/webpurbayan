<!-- Start About Greenforest Section -->
<?php
?>
<section class="bg-about-greenforest">
    <div class="container">
        <div class="row">
            <div class="about-greenforest">
                <div class="row">
                    <div class="col-md-12">
                        <div class="about-greenforest-content">
                            <h2><?php echo $site->namaweb ?></h2>
                            <p class="text-justify"><?php echo character_limiter(strip_tags($site->profil), 575); ?></p>
                                <a href="<?php echo base_url('profil'); ?>" class="btn btn-default"><i class="fad fa-chevron-right"></i> Selengkapnya</a>
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
