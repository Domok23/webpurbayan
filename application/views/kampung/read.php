<section class="bg-single-blog">
    <div class="container">
        <div class="row">
            <div class="single-blog">
                <div class="row">
                    <div class="col-md-12">
                        
                        <div class="blog-items">
                            <?php if($kampung->gambar !="") { ?>
                                <div class="blog-img">
                                    <a href="#"><img src="<?php echo base_url('assets/upload/image/'.$kampung->gambar) ?>" alt="blog-img-10" class="img-responsive img-rounded" /></a>
                                </div>
                            <?php } ?>
                            <!-- .blog-img -->
                            <div class="blog-content-box buttom-rounded">
                                <!-- .meta-box -->
                                <div class="blog-content">
                                    <h4><?php echo $kampung->judul_kampung; ?></h4>

                                    <p class="text-justify"><?php echo $kampung->isi; ?></p>
                                </div>
                                <!-- .blog-content -->
                            </div>
                            <!-- .blog-content-box -->
                        </div>
                        <!-- .blog-items -->
                    </div>
                    <!-- .col-md-12 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .single-blog -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container -->
</section>