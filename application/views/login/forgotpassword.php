<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- icon -->
  <link rel="shortcut icon" href="<?php echo $this->website->icon(); ?>">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/admin/dist/css/adminlte.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/admin/plugins/iCheck/square/blue.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- SWEETALERT -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <style type="text/css" media="screen">
    .login-box {
      min-width: 40% !important;
    }
  </style>
</head>
<body class="bg-gradient-primary">
<div class="login-box col-lg-6">
  
  <!-- /.login-logo -->
  <div class="card shadow-lg" style ="border-radius: 0.8rem; padding: 2rem;">
    <div class="card-body login-card-body">
      <div class="login-logo">
        <h2 style="font-weight: bold; font-size: 24px; margin-top: 20px;">Lupa Password Anda?</h2>
      </div>

      <?php 
      // Notifikasi error
      echo validation_errors('<p class="alert alert-warning" role=alert>','</p>');

      // Form open 
      echo form_open(base_url('login/forgotpassword'));
       ?>

        <div class="form-group">
          <input style ="border-radius: 5rem;" type="text" name="email" class="form-control form-control-lg" placeholder="Masukkan Email" value="<?= set_value ('email')?>">
        </div>
        <div class="row">
          <div class="col-12">
          </div>
          <!-- /.col -->
          <div class="col-12">
            <button style ="border-radius: 5rem;" type="submit" class="btn btn-primary btn-block btn-lg">Reset Password</button>
          </div>
          <!-- /.col -->
        </div>
        <hr>
          <div class="text-center">
            <a href="<?= base_url('login'); ?>">Login Kembali?</a>
          </div>
      
      <?php echo form_close(); ?>

      
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->
<!-- SWEETALERT -->
<?php if($this->session->flashdata('sukses')) { ?>
<script>
  swal("Berhasil", "<?php echo $this->session->flashdata('sukses'); ?>","success")
</script>
<?php } ?>

<?php if($this->session->flashdata('warning')) { ?>
<script>
  swal("Oops...", "<?php echo $this->session->flashdata('warning'); ?>","warning")
</script>
<?php } ?>
<!-- jQuery -->
<script src="<?php echo base_url() ?>assets/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url() ?>assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- iCheck -->
<script src="<?php echo base_url() ?>assets/admin/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass   : 'iradio_square-blue',
      increaseArea : '20%' // optional
    })
  })
</script>

<script type="text/javascript">
  window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 5000);
</script>

</body>
</html>