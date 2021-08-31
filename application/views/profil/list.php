<section class="bg-single-events">
  <div class="container shadow img-rounded">
    <div class="row">
      <div class="single-events">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="single-event-item">
                <div class="single-event-img">
                  <img src="<?php  echo $this->website->icon(); ?>" alt="single-event-img-1" class="img-responsive img-fluid" style="max-width: 150px; height: auto; margin-left: auto; margin-right: auto;"/>
                </div>
              <!-- .single-event-img -->
              <div class="single-event-content buttom-rounded">
                <h3> PROFIL <?php echo $site->namaweb; ?></h3><hr>
                <?php echo $site->profil; ?>
              </div>
              <div class="contact-us">
                <div class="row">
                    <!-- .col-md-8 -->
                    <div class="col-md-12" >
                        <h3 class="contact-title">KONTAK KAMI</h3>
                        <!-- .contact-address -->
                        <ul class="social-icon-rounded contact-social-icon">
                            <li><a href="<?php echo $site->facebook; ?>"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->twitter; ?>"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->instagram; ?>"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="<?php echo $site->google_plus; ?>"><i class="fab fa-google" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <!-- .col-md-4 -->
                </div>
                <!-- .row -->
              </div>
                <!-- STart Maps Section -->
                <style type="text/css" media="screen">
                    iframe {
                        width: 100%;
                        height: auto;
                        min-height: 400px;
                        border-radius: 10px;
                    }
                </style>
                <div id="map" data-aos="zoom-in" data-aos-duration="500"><?php echo $site->google_map; ?></div>
                <!-- End Maps Section -->

              <!-- .single-event-content -->
            </div>
            <!-- .single-event-item -->
          </div>
          <!-- .col-md-12 -->
        </div>
        <!-- .row -->
      </div>
      <!-- .single-events -->
    </div>
    <!-- .row -->
  </div>
  <!-- .container -->
</section>