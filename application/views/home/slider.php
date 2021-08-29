<section class="bg-slider-option">
<div class="slider-option slider-three">
<div id="slider" class="carousel slide wow fadeInDown" data-ride="carousel">
<!-- Indicators -->
<ol class="carousel-indicators">
<li data-target="#slider" data-slide-to="0" class="active"></li>
<li data-target="#slider" data-slide-to="1"></li>
<li data-target="#slider" data-slide-to="2"></li>
</ol>
<!-- Wrapper for slides -->
<div class="carousel-inner" role="listbox">
<?php $i=1; foreach($slider as $slider): ?>
<div class="item <?php if($i==1) { echo 'active'; } ?>">
    <div class="slider-item">
        <img src="<?php echo base_url('assets/upload/image/'.$slider->gambar); ?>" alt="bg-slider">
        <div class="slider-content-area">
            <div class="container">
                <div class="slider-content">
                    <h3>Selamat Datang di</h3>
                    <h2><?php echo $slider->judul_galeri ?></h2>
                    <p><?php echo strip_tags($slider->isi) ?></p>
                </div>
                <!-- .carousel-caption -->  
            </div>
            <!-- .container -->
        </div>
        <!-- slidebar-content-area -->
    </div>
    <!-- slidebar-item -->
</div>
<!-- .items -->
<?php $i++; endforeach; ?>

</div>
<!-- .carosoul-inner -->
<a class="left carousel-control" href="#slider" role="button" data-slide="prev">
<span class="fad fa-angle-left" aria-hidden="true"></span>
</a>
<a class="right carousel-control" href="#slider" role="button" data-slide="next">
<span class="fad fa-angle-right" aria-hidden="true"></span>
</a>
</div>
</div>
<!-- .slider-option -->
</section>

<!-- End Slider Section -->