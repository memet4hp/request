<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="<?php echo base_url(); ?>assets/img/icon.png" type="image/gif">
    <title>gomaintenance | Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/fontawesome-5.5.0/css/all.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/fontawesome-4.3.0/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/adminlte.min.css">
    <!-- Body style -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/stylearyo.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/iCheck/square/blue.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- SweetAlert2 -->
    <link rel="stylesheet"
        href="<?php echo base_url(); ?>assets/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
    <!-- Toastr -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/toastr/toastr.min.css">
</head>

<style>
#color-gradient {
    background-image: linear-gradient(#184B7D, #184B7D);
}

.footer {
    padding: 25px;
    font-weight: bold;
    color: #5b5858;
    text-align: center;
}
</style>

<body class="hold-transition login-page" id="color-gradient">

    <div class="login-box">
    <?php echo form_open("admin/login"); ?>

        <!-- /.login-logo -->
        <div class="card">
            <div class="card-header" style="  color:black">
                <h5 style="font-weight: bold; text-align:center">Silahkan login terlebih dahulu</h5>
            </div>
            <div class="card-body login-card-body">
                <form action="" role="form" id="quickForm" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <div class="input-group mb-3 kosong">
                            <input type="text" name="username" class="form-control" placeholder="Username"
                                value="<?php echo set_value('username'); ?>">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <label for="username">Password</label>
                    <div class="input-group mb-3 kosong">
                        <input type="password" name="password" class="form-control" placeholder="Password"
                            value="<?php echo set_value('password'); ?>">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>

                    <!-- /.col -->
                    <button type="submit" name="submit" class="btn btn-block  "
                        style="background-color: #0d3348; color:white">Login</button>
                    <!-- /.col -->
                    <!-- </div> -->
                </form>
            </div>
            <!-- <div class="col-md-12">      
        <?php
        if (!empty($pesan)) {
          echo $pesan;
        } ?>
        </div> -->
            <!-- /.login-card-body -->
            <div class="footer">

                gomaintenance <br>
                SMARTRI @ 2023
            </div>
        </div>
    </div>
    <!-- /.login-box -->