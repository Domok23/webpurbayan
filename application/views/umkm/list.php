<section class="bg-blog-style-2">
            <div class="container">
                <div class="section-header-umkm">
                    <h2><?php //echo $title ?> DAFTAR UMKM DI KAMPUNG WISATA PURBAYAN</h2>
                </div>
                <div class="row">
                    <div class="blog-style-2">
                        <div class="row">
                            <div class="col-md-12">
                                <?php foreach($umkm as $umkm) { ?>
                                <div class="blog-items">
                                    <div class="blog-img">
                                        <a href="<?php echo base_url('umkm/read/' . $umkm->slug_umkm); ?>"><img src="<?php echo base_url('assets/upload/image/'.$umkm->gambar) ?>" alt="blog-img-10" class="img-responsive img-rounded" /></a>
                                    </div>
                                    <!-- .blog-img -->
                                    <div class="blog-content-box buttom-rounded">
                                        <div class="blog-content">
                                            <h4><a href="<?php echo base_url('umkm/read/' . $umkm->slug_umkm); ?>"><?php echo $umkm->judul_umkm; ?></a></h4>
                                            <ul class="meta-post">
                                                <li><i class="fad fad-calendar" aria-hidden="true"></i> <?php echo date('d M Y', strtotime($umkm->tanggal_publish)); ?></li>
                                                <li><i class="fad fa-user"></i> <?php echo $umkm->nama; ?></li>
                                                <!-- <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> <?php echo $umkm->hits; ?> Viewer</a></li> -->
                                            </ul>
                                            <p class="text-justify"><?php echo character_limiter(strip_tags($umkm->isi), 500); ?></p>
                                            <a href="<?php echo base_url('umkm/read/' . $umkm->slug_umkm); ?>"><i class="fad fa-chevron-right"></i> Selengkapnya</a>
                                        </div>
                                        <!-- .blog-content -->
                                    </div>
                                    <!-- .blog-content-box -->
                                </div>
                                <?php } ?>
                                <div class="pagination-option">
                                    <nav aria-label="Page navigation">
                                        <?php if(isset($pagin)) { echo $pagin; }  ?>
                                        <!-- <ul class="pagination">
                                            <li>
                                                <a href="#" aria-label="Previous">
                                                    <i class="fa fa-angle-double-left" aria-hidden="true"></i>
                                                </a>
                                            </li>
                                            <li><a href="#">1</a></li>
                                            <li class="active"><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">...</a></li>
                                            <li><a href="#">5</a></li>
                                            <li>
                                                <a href="#" aria-label="Next">
                                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                                </a>
                                            </li>
                                        </ul> -->
                                    </nav>
                                </div>
                                <!-- .pagination_option -->
                            </div>
                            <!-- .col-md-8 -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .blog-style-2 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </section>
