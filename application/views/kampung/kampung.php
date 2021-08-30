</div>
<section class="bg-single-events">
  <div class="container">
    <div class="row">
      <div class="single-events">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="single-event-item">
              <?php if($kampung->gambar != "" || $kampung->gambar != NULL) { ?>
                <div class="single-event-img">
                  <img src="<?php echo base_url('assets/upload/image/' . $kampung->gambar); ?>" alt="single-event-img-1" class="img-responsive img-rounded" />
                </div>
              <?php } ?>
              <!-- .single-event-img -->
              <div class="single-event-content">
                <h3><?php echo $kampung->judul_kampung; ?></h3><hr>
                <?php echo $kampung->isi; ?>
              </div>
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