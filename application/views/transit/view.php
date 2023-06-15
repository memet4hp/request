<style>
    table,
    th,
    tr,


    .swal2-popup {
        font-family: inherit;
        font-size: 1.2rem;
    }

    .btn-group,
    .btn-group-vertical {
        position: relative;
        display: initial;
        vertical-align: middle;
    }

    .dataTables_wrapper {
        font-family: 'Calibri';
        font-size: 13px;
        position: relative;
        clear: both;
        *zoom: 1;
        height: 1;
        zoom: 1;
    }

    .container {
        width: 80%;
    }

    .td {
        height: 50px;
    }
</style>
<div class="row">
    <div class="col-xs-12">
        <div class="box box-success">
            <div class="box-header  with-border">
                <h3 class="box-title"><b>Transit File</b></h3>
            </div> <br>
            <!-- <div class="box-body">
                
                 <center>
                     <button onclick="window.location.href='/sampletrace/registrasi'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active  " type="button"> <i class="fa fa-envelope"></i> <b>Registrasi </b><span class="badge"><?php echo $suratmasuk['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/registrasiditerima'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active  " type="button"><i class="fa fa-check"></i> <b>Registrasi Diterima </b><span class="badge"><?php echo $suratditerima['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     
                     <button onclick="window.location.href='/sampletrace/daftarantrian'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"><i class="fa fa-list"></i> <b>Antrian Sample</b> <span class="badge"><?php echo $samplemasuk['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/daftarbatch'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-table"></i> <b> Batch <span class="badge"><?php echo $listbatch['hasil']; ?></span></b>
                     </button>
                  
                     <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/tracing'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-file"></i> <b>Laporan </b><span class="badge"><?php echo $laporan['hasil']; ?></span>
                     </button>
                     <br></b>
                     <br><br>
             </div> -->
        </div>
    </div>
    <div class="col-xs-4" class="a">
        <div class="box box-success">
            <div class="box-header with-border">
                <h3 class="box-title">Kirim</h3>
                <br>
            </div>

            <div class="box-body">

                <form method="POST" action="<?php echo base_url(); ?>transitfile/insert" enctype="multipart/form-data">


                    <div class="col-sm-12">
                        <p><br>
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
                        <label class="col-sm-4 control-label">Keterangan</label>
                        <div class="col-sm-8">
                            <input type="text" name="description" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">

                        <br><br> <br><br> <br><br>
                    </div>
                    <div class="form-group">
                        <label class="control-label"></label>
                        <div class="col-sm-12">
                            <button type="submit" name="submit" class="btn btn-success btn-block">Kirim</button>

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
    </div>

    <div class="col-xs-8">

        <div class="box box-success">
            <div class="box-header with-border">
                <h3 class="box-title ">Download</h3>
                <br>
            </div>
            <br><br>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered">
                    <thead>
                        <tr style="background-color:#09ad9e; color:white;">
                            <th>No.</th>
                            <th width="49%">Nama</th>
                            <th width="17%">Keterangan</th>
                            <th width="12%">Tanggal Kirim</th>

                            <th width="12%" class="header-admin">Download</th>
                            <th class="header-1" width="12%" class="header-1">Hapus</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 0;
                        $no++;

                        foreach ($file as $file) {
                        ?>
                            <tr>
                                <td><?php echo $no++ ?></td>
                                <td><?php echo $file->filename; ?></td>
                                <td><?php echo $file->description; ?></td>
                                <td><?php echo format_indo($file->date); ?></td>
                                <td class="header-admin" align="center"><a href="<?php echo base_url() . 'transitfile/download/' . $file->id; ?>" class="btn btn-success btn-sm  "><span class="glyphicon glyphicon-download-alt"></a></td>
                                <td class="header-1" align="center"><a href="<?php echo base_url() . 'transitfile/delete/' . $file->id; ?>" class="btn btn-danger btn-1 btn-sm  "><span class="glyphicon glyphicon-trash"><i onClick="return confirm('Yakin menghapus data?')"></i> </a></td>
                            <?php
                        }
                            ?>
                    </tbody>
                </table>
            </div>

        </div>
    </div>

    </section>

    <script src="<?php echo base_url(); ?>assets/app/js/alert.js"></script>
    <script src="<?php echo base_url(); ?>assets/app/js/sweetalert2.min.js"></script>

    <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/datatables.min.css">

    <script>
        <?php
        if ($this->session->userdata('id_level_user') == "2") { ?>

            $(document).ready(function() {
                        $(document).ready(function() {
                            $('#example').DataTable({
                                "scrollY": 250,
                                "scrollX": true,
                                paging: false,

                            });

                        });
                    <?php } else if ($this->session->userdata('id_level_user') == "1") { ?>
                        $(document).ready(function() {
                            $('#example').DataTable({
                                "scrollY": 250,


                            });

                            $(".header-1").remove();
                        });

                    <?php } else if ($this->session->userdata('id_level_user') == "0") { ?>
                        $(document).ready(function() {
                            $('#example').DataTable({
                                "scrollY": 250,


                            });

                            $(".header-1").remove();
                            $(".header-admin").remove();
                        });


                    <?php } else if ($this->session->userdata('id_level_user') == "3") { ?>
                        $(document).ready(function() {
                            $('#example').DataTable({
                                "scrollY": 250,


                            });

                            //  $(".header-admin").remove();
                        });

                    <?php } else {
                }; ?>
    </script>