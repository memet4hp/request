
<head>
    <link rel="icon" href="<?php echo base_url(); ?>assets/img/icon.png" type="image/gif">
    <title>gomaintenance</title>


  <link rel="stylesheet" href="<?php echo base_url(); ?>css/style-user.css">  

</head>
<?php 
$this->load->view('templates/header') 

?>
<!-- end header -->

<?php $this->load->view('templates/js'); ?>
<!-- menu -->
<?php 
$this->load->view('templates/sidebar'); 
?>
<!-- end menu -->


    <!-- Content Header (Page header) -->
    <section  >
      <div class="container-fluid">
        <div class="row ">
          <div class="col-sm-6" style="  margin-top:5px; margin-bottom:-10px;">
            <!-- <h4><?php echo ucfirst($this->uri->segment(1)); ?></h4> -->
          </div>
          <!-- <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
              <li class="breadcrumb-item active"><?php echo ucfirst($this->uri->segment(1)); ?></li>
            </ol>
          </div> -->
        </div>
      </div>
    </section>
<!-- page-wrapper -->

    <!-- Main content -->
    <!-- <section class="content"> -->
      <div class="container-fluid">
      	<?php echo $contents; ?>
    </div>
<?php $this->load->view('templates/js') ?>

    <!-- </section> -->
<!-- /# end page-wrapper -->
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- /#wrapper -->
        <!-- footer -->
<?php 

$apl = $this->db->get("aplikasi")->row();
?>
<footer class="main-footer navbar-default" style="padding-left: 25px;">
<small style="font-size: 12px; color:black">Copyright &copy; <?php  echo $apl->tahun; ?> • <a href="#"><?php  echo $apl->nama_owner; ?></a>.
 All rights reserved.</strong>
<div class="float-right d-none d-sm-inline-block">
  <b>Version</b> <?php echo $apl->versi; ?>
</div>
</footer>
<!-- end footer -->

</body>

</html>
