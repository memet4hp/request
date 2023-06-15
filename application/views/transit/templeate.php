 <!-- <section class="content"> -->
 <div class="row">
     <div class="col-xs-12">
         <div class="box box-success">
             <div class="box-header  with-border">
                 <h3 class="box-title"><b>Daftar registrasi</b></h3>
             </div>
             <div class="box-body">
                 <br>
                 <center>
                     <button onclick="window.location.href='/sampletrace/registrasi'" style="background-color:#09ad9e; color: white;" class="btn btn-danger btn-social" type="button"> <i class="fa fa-envelope"></i> <b>Registrasi </b><span class="badge"><?php echo $suratmasuk['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/registrasiditerima'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active  " type="button"><i class="fa fa-check"></i> <b>Registrasi Diterima </b><span class="badge"><?php echo $suratditerima['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <!-- <button onclick="window.location.href='/sampletrace/daftarantrian'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active  " type="button"> <i class="fa fa-list"></i> <b> Antrian Sample </b><span class="badge"><?php echo $samplemasuk['hasil']; ?></span> -->
                     <!-- </button> -->
                     <!-- <i class="fa fa-arrows-h"></i> -->
                     <button onclick="window.location.href='/sampletrace/daftarantrian'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"><i class="fa fa-list"></i> <b>Antrian Sample</b> <span class="badge"><?php echo $samplemasuk['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/daftarbatch'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-table"></i> <b> Batch <span class="badge"><?php echo $listbatch['hasil']; ?></span></b>
                     </button>
                     <!-- <i class="fa fa-arrows-h"></i> -->
                     <!-- <button onclick="window.location.href='/sampletrace/daftarkonfirmasibatch'" style="background-color: #ffffff; color: green;" class="btn btn-default   active " type="button"> <i class=""></i> <b>Jumlah Batch <span class="badge"><?php echo $listbatch['hasil']; ?></span></b>
                    </button>  -->
                     <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/tracing'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-file"></i> <b>Laporan </b><span class="badge"><?php echo $laporan['hasil']; ?></span>
                     </button>
                     <!-- <button onclick="window.location.href='/sampletrace/daftarsample/delete'" class="btn btn-danger bg-white btn-social " type="button"> <i class="fa fa-trash"></i> <span class="badge"><?php echo $sampledelete['hasil']; ?></span>
                             </button>
                             <button onclick="window.location.href='/sampletrace/daftarsample/deletebatch'" class="btn btn-danger bg-white btn-social " type="button"> <i class="fa fa-trash"></i> <span class="badge"><?php echo $sampledelete['hasil']; ?></span>
                             </button>
                             <button onclick="window.location.href='/sampletrace/daftarsample/deleteduplo'" class="btn btn-danger bg-white btn-social " type="button"> <i class="fa fa-trash"></i> <span class="badge"><?php echo $sampledelete['hasil']; ?></span>
                             </button> -->
                     <br></b>
                     <br><br>
             </div>
         </div>

         <div class="row">
             <div class="col-xs-12">
                 <div class="box box-success">
                     <div class="box-header  with-border">
                         <ul class="nav nav-tabs box-teal bg-white">
                             <button onclick="window.location.href='/sampletrace/registrasi/templeate'" style="background-color: #09ad9e; color: white;" class="btn btn-danger  " type="button"><b>Download Template </b>
                             </button>
                             <button onclick="window.location.href='/sampletrace/registrasi/addtrial'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-plus"></i> <b>Registrasi Trial </b>
                             </button>
                             <button onclick="window.location.href='/sampletrace/registrasi/add'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-plus"></i> <b>Registrasi Komersial </b>
                             </button>
                             <button onclick="window.location.href='/sampletrace/registrasi'" style="background-color: #ffffff; color: green;" class="btn btn-default   active " type="button"> <b>Registrasi Masuk </b><span class="badge"><?php echo $suratmasuk['hasil']; ?></span>
                             </button>
                         </ul>
                         <br><br>
                         <br>

                         <!-- <div class="col-xs-4" class="a">

                             <div class="box box-info">

                                 
                                 <div class="box-body">

                                     <form method="POST" action="<?php echo base_url(); ?>registrasi/insert" enctype="multipart/form-data">


                                         <div class="col-sm-12">
                                             <p>
                                             <p>
                                         </div>
                                         <div class="form-group">
                                             <label class="col-sm-4 control-label">File</label>
                                             <div class="col-sm-8">
                                                 <input class="form-control" type="file" name="upload" size="20" />

                                             </div>
                                         </div>

                                         <div class="col-sm-12">
                                             <p>
                                             <p>
                                         </div>
                                         <div class="form-group">
                                             <label class="col-sm-4 control-label">Notes</label>
                                             <div class="col-sm-8">
                                                 <input type="text" name="description" class="form-control" required>
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <label class="control-label"></label>
                                             <div class="col-sm-4">
                                                 <button type="submit" name="submit" class="btn btn-primary">Save</button>

                                             </div>
                                         </div>

                                         <input type="hidden" name="date" value="<?php echo date("Y-m-d"); ?>" />

                                     </form>
                                     <?php
                                        if ($this->session->flashdata('success')) {
                                        ?>
                                         <div class="alert alert-success text-center" style="margin-top:120px;">
                                             <?php echo $this->session->flashdata('success'); ?>
                                         </div>
                                     <?php
                                        }

                                        if ($this->session->flashdata('error')) {
                                        ?>
                                         <div class="alert alert-danger text-center" style="margin-top:20px;">
                                             <?php echo $this->session->flashdata('error'); ?>
                                         </div>
                                     <?php
                                        }
                                        ?>
                                 </div>
                             </div>
                         </div> -->

                         <div class="col-xs-4">
                            

                                 <!-- /.box-header -->
                                 <div class="box-body">
                                     <table id="example" class="table table-striped table-bordered table-hover table-full-width dataTable">
                                         <thead>
                                             <tr style="background-color:#09ad9e; color:white;">
                                                 <th width="6%">Download Template</th>
                                                 <th width="1%">Download</th>
                                             </tr>
                                         </thead>
                                         <tbody>
                                             <?php
                                                foreach ($templeate as $file) {
                                                ?>
                                                 <tr>
                                                     <td><?php echo $file->description; ?></td>
                                                     <td><a href="<?php echo base_url() . 'registrasi/download/' . $file->id; ?>" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-download-alt"></a></td>
                                                 <?php
                                                }
                                                    ?>
                                         </tbody>
                                     </table>
                                 </div>
                            
                         </div>
                     </div>

                     </section>

                     <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
                     <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.bootstrap.min.js"></script>
                     <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/datatables.min.css">
                     <script>
                         $(document).ready(function() {
                             $('#example').DataTable({
                                 paging: false,
                                 "columns": [
    { "searchable": false },
                             });
                         });
                     </script>