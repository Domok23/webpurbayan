<!-- Navbar -->
  <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom" style="box-shadow: 0 2px 4px rgba(0, 0, 0, 0.075);">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fad fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo base_url() ?>" target="_blank" class="nav-link"> Beranda Website <i class="fad fa-home-alt"></i></a>
      </li>
    </ul>
    <!-- Right navbar links -->
                      <ul class="navbar-nav ml-auto">

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow text-strong">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">  
                            <span class="mr-1 d-none d-lg-inline"><?= $this->session->userdata('nama'); ?></span>
                            <i class="fad fa-user"></i>  
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="<?php echo base_url('admin/akun') ?>">
                                    <i class="fad fa-user-circle mr-2 "></i>
                                    
                                    Profil Saya
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?php echo base_url('admin/akun/password') ?>">
                                    <i class="fad fa-key mr-2 "></i>
                                    Ganti Password
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?php echo base_url('login/logout') ?>">
                                    <i class="fad fa-arrow-alt-circle-left mr-2"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>
  </nav>
  <!-- /.navbar -->
