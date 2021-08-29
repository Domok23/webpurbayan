<section class="bg-servicesstyle2-section">
<div class="container">
    <div class="row">
        <div class="our-services-option">
            <div class="section-header">
                <h2>Kampung Wisata <br>di <?php echo $site->namaweb ?></h2>
            </div>
            <!-- .section-header -->
            <div class="row">
                <?php foreach($kampung as $kampung) { ?>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                    <div class="our-services-box">
                        <div class="our-services-items">
                            <i class="<?php echo $kampung->icon ?> fa-5x" style="color:#337ab7; margin-bottom: 20px;"></i>
                            <div class="our-services-content">
                                <h4><a href="<?php echo base_url('berita/kampung/'.$kampung->slug_berita) ?>"><?php echo $kampung->judul_berita ?></a></h4>
                                <p><?php echo $kampung->keywords; ?></p>
                                <a href="<?php echo base_url('berita/kampung/'.$kampung->slug_berita) ?>">Selengkapnya<i class="fad fa-angle-double-right" aria-hidden="true"></i></a>
                            </div>
                            <!-- .our-services-content -->
                        </div>
                        <!-- .our-services-items -->
                    </div>
                    <!-- .our-services-box -->
                </div>
                <?php } ?>
            </div>
            <!-- .row -->
        </div>
        <!-- .our-services-option -->
    </div>
    <!-- .row -->
</div>
<!-- .container -->
</section>


<!-- End Service Style2 Section -->

