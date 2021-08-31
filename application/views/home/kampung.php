<section class="bg-servicesstyle2-section">
<div class="container">
    <div class="row">
        <div class="our-services-option">
            <div class="section-header" data-aos="fade-down" data-aos-duration="1500" data-aos-offset="200">
                <h2>Kampung Wisata <br>di <?php echo $site->namaweb ?></h2>
            </div>
            <!-- .section-header -->
            <div class="row">
                <?php foreach($kampung as $kampung) { ?>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                    <div class="our-services-box" data-aos="zoom-in" data-aos-duration="500" data-aos-offset="300">
                        <div class="our-services-items">
                            <i class="<?php echo $kampung->icon ?> fa-5x" style="color:#337ab7; margin-bottom: 20px;"></i>
                            <div class="our-services-content">
                                <h4><a href="<?php echo base_url('kampung/read/'.$kampung->slug_kampung) ?>"><?php echo $kampung->judul_kampung ?></a></h4>
                                <p><?php echo $kampung->keywords; ?></p>
                                <a href="<?php echo base_url('kampung/read/'.$kampung->slug_kampung) ?>">Selengkapnya <i class="fad fa-angle-double-right" aria-hidden="true"></i></a>
                            </div>
                            <!-- .our-services-content -->
                        </div>
                        <!-- .our-services-items -->
                    </div>
                    <!-- .our-services-box -->
                </div>
                <?php } ?>
            </div>
            <div class="donation-section">
                <div class="donaton-header" data-aos="fade-down" data-aos-duration="1500" data-aos-offset="200">
                    <h3>UMKM Desa Wisata Purbayan</h3>
                </div>
                <!-- .count-number -->
                <div class="donate-btn" data-aos="zoom-in" data-aos-duration="500" data-aos-offset="300">
                <a href="donate.html" class="btn btn-default">Lihat UMKM <i class="fad fa-angle-right" aria-hidden="true"></i></a>
                </div>
                <!-- .donate-option -->
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

