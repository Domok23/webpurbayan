<!-- Navbar -->
  <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo base_url() ?>" target="_blank" class="nav-link">Beranda Website</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo base_url('admin/dasbor') ?>" class="nav-link">Dasbor</a>
      </li>
    </ul>
    <!-- Right navbar links -->
                      <ul class="navbar-nav ml-auto">

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow text-strong">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">  
                            <span class="mr-1 d-none d-lg-inline"><?= $this->session->userdata('nama'); ?></span>
                            <i class="fa fa-user"></i>  
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="<?php echo base_url('admin/akun') ?>">
                                    <i class="fa fa-user mr-2 "></i>
                                    My Profile
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?php echo base_url('admin/akun/password') ?>">
                                    <i class="fa fa-key mr-2 "></i>
                                    Ganti Password
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?php echo base_url('login/logout') ?>">
                                    <i class="fa fa-sign-out mr-2"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>
  </nav>
  <!-- /.navbar -->
