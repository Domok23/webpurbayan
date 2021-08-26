<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?php echo base_url('admin/dasbor') ?>" class="brand-link">
      <img src="<?php echo $this->website->icon() ?>"
           alt="<?php echo $this->website->namaweb(); ?>"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text" style="color: rgba(255, 255, 255, 1); font-weight: 600;"><?php echo $this->konfigurasi_model->listing()->singkatan; ?></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php 
          $user_aktif = $this->user_model->detail($this->session->userdata('id_user'));

          if($user_aktif->gambar =="") {
            echo base_url('assets/upload/user/default.png');}else{ echo base_url('assets/upload/user/thumbs/'.$user_aktif->gambar); } ?>" class="img-circle elevation-2" alt="<?php echo $this->session->userdata('nama'); ?>">
        </div>
        <div class="info">
          <a href="<?php echo base_url('admin/akun') ?>" class="d-block" style="color: rgba(255, 255, 255, 1); font-weight: 400;"><?php echo $this->session->userdata('nama'); ?>
          </a>
        </div>
      </div>


      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- DASBOR -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/dasbor') ?>" class="nav-link">
              <i class="nav-icon fa fa-dashboard"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          
          <!-- BERITA DAN INFORMASI -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-newspaper-o"></i>
              <p>Berita<i class="right fa fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview" style="background-color: #292834;">
              <li class="nav-item"><a href="<?php echo base_url('admin/berita') ?>" class="nav-link"><i class="fa fa-table nav-icon"></i><p style="font-size: 14px;">Data Berita</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/berita/tambah') ?>" class="nav-link"><i class="fa fa-plus nav-icon"></i><p style="font-size: 14px;">Tambah Berita</p></a>
              </li>
              
            </ul>
          </li> 

          <!-- GALERI -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-image"></i>
              <p>Galeri &amp; Banner <i class="right fa fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview" style="background-color: #292834;">

              <li class="nav-item"><a href="<?php echo base_url('admin/galeri') ?>" class="nav-link"><i class="fa fa-table nav-icon"></i><p style="font-size: 14px;">Data Galeri &amp; Banner</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/galeri/tambah') ?>" class="nav-link"><i class="fa fa-plus nav-icon"></i><p style="font-size: 14px;">Tambah Galeri &amp; Banner</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/kategori_galeri') ?>" class="nav-link"><i class="fa fa-tags nav-icon"></i><p style="font-size: 14px;">Kategori Galeri &amp; Banner</p></a>
              </li>
              
            </ul>
          </li>
          
          <?php if( $this->session->userdata('akses_level') == 1 ) { ?>
          <!-- MENU USER -->
          <li class="nav-item">
            <a href="<?php echo base_url('admin/user') ?>" class="nav-link">
              <i class="nav-icon fa fa-lock"></i>
              <p>
                Pengelola Sistem
              </p>
            </a>
          </li>

          <!-- KONFIGURASI MENU -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-wrench"></i>
              <p>Konfigurasi <i class="right fa fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview" style="background-color: #292834;">
              
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi') ?>" class="nav-link"><i class="fa fa-wrench nav-icon"></i><p style="font-size: 14px;">Konfigurasi Umum</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi/logo') ?>" class="nav-link"><i class="fa fa-home nav-icon"></i><p style="font-size: 14px;">Ganti Logo</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi/icon') ?>" class="nav-link"><i class="fa fa-upload nav-icon"></i><p style="font-size: 14px;">Ganti Icon</p></a>
              </li>
              <li class="nav-item"><a href="<?php echo base_url('admin/konfigurasi/email_setting') ?>" class="nav-link"><i class="fa fa-sitemap nav-icon"></i><p style="font-size: 14px;">Email Setting</p></a>
              </li>
            </ul>
          </li>
          <?php } ?>
          <!-- Logout -->
          <li class="nav-item">
            <a href="<?php echo base_url('login/logout') ?>" class="nav-link">
              <i class="nav-icon fa fa-sign-out"></i>
              <p>
                Logout
              </p>
            </a>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1><?php echo $title ?></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/dasbor') ?>">Dashboard</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'.$this->uri->segment(2)) ?>"><?php echo ucfirst(str_replace('_',' ',$this->uri->segment(2))) ?></a></li>
              <li class="breadcrumb-item active"><?php echo character_limiter($title,10) ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.card-header -->
            <div class="card-body">