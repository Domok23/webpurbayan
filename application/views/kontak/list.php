<!-- Start Contact us Section -->
<section class="bg-contact-us">
    <div class="container">
        <div class="row">
            <div class="contact-us">
                <div class="row">
                    <!-- .col-md-8 -->
                    <div class="col-md-8" >
                        <h3 class="contact-title">KONTAK KAMI</h3>
                        <ul class="contact-address">
                            <li>
                                <i class="flaticon-placeholder"></i>
                                <div class="contact-content">
                                    <?php echo $site->alamat; ?>
                                </div>
                            </li>
                            <li>
                                <i class="flaticon-vibrating-phone"></i>
                                <div class="contact-content">
                                    <?php echo $site->telepon; ?>
                                    <?php echo $site->hp; ?>
                                </div>
                            </li>
                            <li>
                                <i class="flaticon-message"></i>
                                <div class="contact-content">
                                    <?php echo $site->email; ?>
                                </div>
                            </li>
                        </ul>
                        <!-- .contact-address -->
                        <ul class="social-icon-rounded contact-social-icon">
                            <li><a href="<?php echo $site->facebook; ?>"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->youtube; ?>"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->instagram; ?>"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="mailto:<?php echo $site->email;?>"><i class="fab fa-google" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <!-- .col-md-4 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .contact-us -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container -->
</section>
<!-- End Contact us Section -->


<!-- STart Maps Section -->
<style type="text/css" media="screen">
    iframe {
        width: 100%;
        height: auto;
        min-height: 500px;
    }
</style>
<div id="map" data-aos="zoom-in" data-aos-duration="500"><?php echo $site->google_map; ?></div>
<!-- End Maps Section -->