<style>
.sidebar-logo {
    background-color: #0093AD;
    padding-bottom: 20px;
}

.sidebar-custom {
    /* background-color: #106391; */
    background: linear-gradient(to left, #106391, #002940);
    /* background: linear-gradient(to left,   #163d91, #031b4e);  */
    position: fixed;
}

.sidebar-custom .nav-treeview {
    background: #315b7f;
    margin-left: 20px;
}

.sidebar-custom .nav-sidebar>.nav-item>.nav-link.active,
.sidebar-light-info .nav-sidebar>.nav-item>.nav-link.active {
    background-color: #fff;
    color: #000;
}

.nav-pills .nav-link {
    color: #ffffff;
}

.nav-pills:hover .nav-link:hover {
    color: #fff;
    background-color: #292b2c;
}

.li:hover {
    color: #fff;
}


.sidebar-shadow {
    box-shadow: 0 14px 28px rgba(0, 0, 0, .25), 0 10px 10px rgba(0, 0, 0, .22) !important;
}

.user-panel img {
    height: auto;
    width: 2.1rem;
}

.namamenu {
    font-size: 14px;
    font-weight: 500;
}

.btn-login {
    border-radius: 15px;
    color: #fff;
    padding: 8px 10px;
    background-color: #106391;
    font-weight: 600;
    border-color: #106391;
    margin: 5px;
}

.btn-login:hover {
    color: #fff;
    background-color: #106391;
    border-color: #106391;
}
</style>



<?php
$apl = $this->db->get("aplikasi")->row();
?>
<!-- main-header navbar navbar-expand navbar-default navbar-dark navbar-cyan -->
<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-default navbar-dark navbar-white">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link " data-widget="pushmenu" href="#" role="button"><i style="color: #106391 ;"
                    class="fas fa-bars"></i></a>
        </li>
    </ul>

    <img style="margin-right: 15px ;" src="<?php echo base_url(); ?>assets/img/logo.png" width="140" height="auto">
   
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a href="#" class="nav-link">
                <div class="user-panel d-none d-sm-inline-block" style="color: #000 ; ">
                    <b><?php echo $this->session->userdata['nama_lengkap']; ?></b>
                </div>
                <!-- </div> -->
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" style="color: #000 ;" href="<?php echo base_url('Admin/logout') ?>" role="button">
                <i class="fas fa-sign-out-alt" title="Sign Out"></i>
            </a>
        </li>

    </ul>
</nav>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-custom sidebar-shadow">

    <div class="sidebar ">
        <!-- Sidebar user panel (optional) -->

        <!-- Sidebar Menu -->
        <nav class="mt-2">


            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <?php $page = $this->uri->segment(1); ?>

                <li class="nav-item">
                    <a href="<?= site_url('home') ?>"
                        <?= $page == "home"   ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fa fa-home"></i>
                        <p class="namamenu">
                            Dashboard
                        </p>
                    </a>
                </li>


                <li class="nav-item">
                    <a href="<?= site_url('order') ?>"
                        <?= $page == "order"   ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fa fa-file"></i>
                        <p class="namamenu">
                            Form Order
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="#"
                        <?= $page == "pemeriksaanrumah"  ||  $page == "pemeriksaankantor"  ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fas fa-check"></i>
                        <p>
                            Pemeriksaan Petugas
                            <i class="fas fa-angle-left right"></i>
                            <!-- <span class="badge badge-info right">6</span> -->
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= site_url('pemeriksaanrumah') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pemeriksaan Rumah</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= site_url('pemeriksaankantor') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pemeriksaan Kantor</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a href="#"
                        <?= $page == "pengerjaanrumah"  ||  $page == "pengerjaankantor"  ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fa fa-list-alt"></i>
                        <p>
                        Hasil Pengerjaan
                            <i class="fas fa-angle-left right"></i>
                             
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= site_url('pengerjaanrumah') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pengerjaan Rumah</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= site_url('pengerjaankantor') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pengerjaan Kantor</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a href="#"
                        <?= $page == "evaluasirumah"  ||  $page == "evaluasirumah"  ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fa fa-star"></i>
                        <p>
                        Evaluasi User
                            <i class="fas fa-angle-left right"></i>
                             
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= site_url('evaluasirumah') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pengerjaan Rumah</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= site_url('evaluasirumah') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pengerjaan Kantor</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a href="#"
                        <?= $page == "arsiprumah"  ||  $page == "arsipkantor"  ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fa fa-archive"></i>
                        <p>
                        Arsip Perbaikan
                            <i class="fas fa-angle-left right"></i>
                             
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= site_url('pengerjaanrumah') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Arsip Perbaikan Rumah</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= site_url('pengerjaankantor') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Arsip Perbaikan Kantor</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a href="<?= site_url('databasestaff') ?>"
                        <?= $page == "databasestaff"   ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fas fa-user-friends"></i>
                        <p class="namamenu">
                            Database Staff
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= site_url('databaserumah') ?>"
                        <?= $page == "databaserumah"   ? 'class="nav-link active"' : 'class="nav-link"' ?>>
                        <i class="nav-icon fas fa-house-user    "></i>
                        <p class="namamenu">
                            Database Rumah
                        </p>
                    </a>
                </li>

                

                <li class="nav-item">
                    <a href="<?= base_url('admin/logout') ?>" class="nav-link">
                        <i class="nav-icon fas  fa-sign-out-alt text-bold"></i>
                        <p class="namamenu">Log out</p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!-- jQuery -->
<script src="<?php echo base_url(); ?>assets/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?php echo base_url(); ?>assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url(); ?>assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="<?php echo base_url(); ?>assets/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<!-- <script src="<?php echo base_url(); ?>assets/plugins/sparklines/sparkline.js"></script> -->
<!-- JQVMap -->
<script src="<?php echo base_url(); ?>assets/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?php echo base_url(); ?>assets/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?php echo base_url(); ?>assets/plugins/moment/moment.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?php echo base_url(); ?>assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js">
</script>
<!-- Summernote -->
<script src="<?php echo base_url(); ?>assets/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?php echo base_url(); ?>assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>


<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

<!-- SweetAlert2 -->
<script src="<?php echo base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="<?php echo base_url(); ?>assets/plugins/toastr/toastr.min.js"></script>

<!-- InputMask -->
<script src="<?php echo base_url(); ?>assets/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url(); ?>assets/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="<?php echo base_url(); ?>assets/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js">
</script>

<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="<?php echo base_url(); ?>assets/dist/js/pages/dashboard.js"></script> -->
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/dist/js/demo.js"></script>
<script src="<?php echo base_url(); ?>assets/sweetalert2.all.min.js"></script>

<!-- bootstrap color picker -->
<script src="<?php echo base_url(); ?>assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>

<!-- Bootstrap Switch -->
<script src="<?php echo base_url(); ?>assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <link rel="stylesheet" href="<?php echo base_url(); ?>css/style-user.css">