<!DOCTYPE html>
<html>

<head>
  <style>
    .theSelect {
      width: 283px;
      height: 30px;
    }

    h3 {
      margin-left: 10px;
    }
  </style>
</head>
<div class="row">
  <div class="col-xs-12">
    <div class="box box-success">
      <div class="box-header  with-border">
        <h3 class="box-title"><b>Daftar registrasi</b></h3>
      </div>
      <div class="box-body">
      <br>
                 <center>
                     <button onclick="window.location.href='/sampletrace/registrasi'" style="background-color: #09ad9e; color: white;" class="btn btn-danger  btn-social " type="button"> <i class="fa fa-envelope"></i> <b>Registrasi </b><span class="badge"><?php echo $suratmasuk['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/registrasiditerima'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active  " type="button"><i class="fa fa-check"></i> <b>Registrasi Diterima </b><span class="badge"><?php echo $suratditerima['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <!-- <button onclick="window.location.href='/sampletrace/daftarantrian'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active  " type="button"> <i class="fa fa-list"></i> <b> Antrian Sample </b><span class="badge"><?php echo $samplemasuk['hasil']; ?></span> -->
                     <!-- </button> -->
                     <!-- <i class="fa fa-arrows-h"></i> -->
                     <button onclick="window.location.href='/sampletrace/daftarsample'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"><i class="fa fa-list"></i> <b>Antrian Sample</b> <span class="badge"><?php echo $samplemasuk['hasil']; ?></span>
                     </button> <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/daftarbatch'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-table"></i> <b> Batch <span class="badge"><?php echo $batch['hasil']; ?></span></b>
                    </button> 
                    <!-- <i class="fa fa-arrows-h"></i> -->
                    <!-- <button onclick="window.location.href='/sampletrace/daftarkonfirmasibatch'" style="background-color: #ffffff; color: green;" class="btn btn-default   active " type="button"> <i class=""></i> <b>Jumlah Batch <span class="badge"><?php echo $listbatch['hasil']; ?></span></b>
                    </button>  -->
                    <i class="fa fa-arrow-right"></i>
                     <button onclick="window.location.href='/sampletrace/tracing'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-file"></i> <b>Laporan </b><span class="badge"><?php echo $suratmasuk['hasil']; ?></span>
                     </button><br></b>
                     <br><br>
      </div>
    </div>

 
    <div class="row">
      <div class="col-xs-12">
        <div class="box box-success">
          <div class="box-header  with-border">
          <ul class="nav nav-tabs box-teal bg-white">
          <button onclick="window.location.href='/sampletrace/registrasi/templeate'" style="background-color: #ffffff; color: green;" class="btn btn-default active " type="button"><b>Download Template </b>
                             </button>
          <button onclick="window.location.href='/sampletrace/registrasi'" style="background-color: #09ad9e; color: white;" class="btn btn-danger  " type="button"> <b>Registrasi Masuk </b><span class="badge"><?php echo $suratmasuk['hasil']; ?></span>
                             </button>
                             <button onclick="window.location.href='/sampletrace/registrasi/addtrial'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-plus"></i> <b>Registrasi Trial </b>
                             </button>
                             <button onclick="window.location.href='/sampletrace/registrasi/add'" style="background-color: #ffffff; color: green;" class="btn btn-default btn-social active " type="button"> <i class="fa fa-plus"></i> <b>Registrasi Komersial </b>
                             </button>
            <br><br><br>
            <center>
              <div class="box box-success ">
                <div class="box-header with-border  " style="background-color:#09ad9e; color:white;">

                  <center>
                    <b></b>
                    <h4>Upload Berkas</h4>
                </div>

        <div class="box box-success ">
          <!-- /.box-header -->
          <!-- form start -->
          <?php
          echo form_open_multipart('registrasi/editberkas', 'role="form" class="form-horizontal"');
          ?>

          <div class="box-body">
            <br><br>
            <div class="form-group">
              <label class="col-sm-3 control-label">ID Registrasi</label>
              <div class="col-sm-8">
                       <b><input type="text" value="<?php echo $data['id_reg']; ?>" readonly="true" name="id_reg" class="form-control"  ></b>
                      </div>
            </div>

            <div class="form-group">
              <label class="col-sm-3 control-label">Pengirim</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['pengirim']; ?>" readonly="true" name="pengirim" class="form-control"  >
              </div>
              <label class="col-sm-2 control-label">No. Permintaan</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['no_permintaan']; ?>" readonly="true" name="no_permintaan" class="form-control"  >
              </div>
            </div>

            <div class="form-group">
            <label class="col-sm-3 control-label">Lokasi</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['lokasi']; ?>" readonly="true" name="lokasi" class="form-control"  >
              </div>
              <label class="col-sm-2 control-label">Tanggal Surat</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['tgl_surat']; ?>" readonly="true" name="tgl_surat" class="form-control"  >
              </div>
            </div>

            <div class="form-group ">
              <label class="col-sm-3 control-label">Kategori</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['kategori']; ?>" readonly="true" name="kategori" class="form-control"  >
              </div>
              <label class="col-sm-2 control-label">Jumlah Sampel</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['jumlah']; ?>" readonly="true" name="jumlah" class="form-control"  >
              </div>
            </div>

            <div class="form-group">
              <label class="col-sm-3 control-label">Urgensi</label>
              <div class="col-sm-3">
                <input type="text" class="form-control" name="urgensi" requiredd="" value="Normal" readonly /> </b>
              </div>
              <label class="col-sm-2 control-label">Ref Surat RFC</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['ref_rfc']; ?>" readonly="true" name="ref_rfc" class="form-control"  >
              </div>
            </div>

            <div class="form-group">
              <label class="col-sm-3 control-label">Jenis Analisa</label>
              <div class="col-sm-3">
                <input type="text" class="form-control" name="jenis" requiredd="" value="LSU" readonly />
              </div>
              <label class="col-sm-2 control-label">Ref Surat LAB</label>
              <div class="col-sm-3">
              <input type="text" value="<?php echo $data['ref_labor']; ?>" readonly="true" name="ref_lab" class="form-control"  >
              </div>
            </div>

           

            <input type="hidden" name="tgl_kirim" value="<?php echo date("Y-m-d"); ?>" />

            <div class="form-group">
              <label class="col-sm-3 control-label">Upload Berkas (.xlxs)</label>
              <div class="col-sm-8">
                <input class="form-control" type="file" name="upload" size="20" />
              </div>
            </div>

            <input type="hidden" name="status" value="Menunggu" />

            <input type="hidden" name="last_update" value="<?php echo date("Y-m-d"); ?>" />

            <div class="form-group">
              <label class="col-sm-3 control-label"></label>
              <div class="col-sm-2">
                <button type="submit" name="submit" class="btn bg-green">Kirim</button>
                <?php
                echo anchor('registrasi', 'Back', array('class' => 'btn bg-gray'));
                ?>
              </div>
            </div>

          </div>

          <div class="box box-success ">
            <br>
            <!-- /.box-body -->
            </form>
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
</section>

<link rel="stylesheet" href="">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>

<link href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css " rel="stylesheet" />
<script src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.min.js"></script>
<script>
  $(".theSelect").select2();

  // function toggle(pilih) {
  // checkboxes = document.getElementsByName('kursus');
  // for(var i=0, n=checkboxes.length;i<n;i++) {
  // checkboxes[i].checked = pilih.checked;
  // }
  // }
</script>