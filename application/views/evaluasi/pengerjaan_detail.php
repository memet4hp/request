<style>
  h7 {
    color: #111;
    font-size: 14px;
    font-weight: bolder;
  }

  h8 {
    color: #343030;
    font-size: 13px;
    margin: 8px;
  }

  h5 {
    border-bottom: 1px solid #D0D0D0;
    padding-bottom: 20px;
  }

  .teks {
    margin: 5px 5px;
  }

  .accordion .btn-gradient-primary::after {
    font-family: 'FontAwesome';
    content: "\f068";
    float: right;
    margin-left: 10px;
    margin-right: 5px;
  }

  .accordion .btn-gradient-primary.collapsed::after {
    content: "\f06e";
    margin-left: 10px;
    margin-right: 5px;
  }

  .card {
    border-radius: 20px;
  }

  .row2 {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: 0px;
    margin-left: 0px;
    border-bottom-right-radius: 15px;
    border-top-left-radius: 15px;
    padding-top: 10px;

  }

  .col-sm-1 {
    text-align: right;
    align-items: right;
  }

  .col-sm-5 {
    padding-right: 0px;
  }

  .wrapper {
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #f3eaea
  }

  .wrapper .form-control {
    padding-left: 20px;
    margin-bottom: 10px;
    border-radius: 5px;
    box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff;
    border: 1px solid #d8d8d8;
  }

  .card-top {
    background-color: #0077b6;
    /* border-top-radius: 20px; */
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    box-shadow: 13px 13px 20px #cbced1;
    padding-top: 10px;
  }
</style>

<div class="page-header">
  <div class="page-block">
    <div class="row align-items-center">
      <div class="col-md-12">
        <div class="page-header-title">
          <h5 class="m-b-10">Pengerjaan</h5>
        </div>
      </div>
    </div>
  </div>
</div>

  

<br>
<div class="row">

  <div class="col-sm-6">
    <div class="card" style="background-color: #fff;">

      <div class="card-body">
        <?php
        echo form_open_multipart('pengerjaan/detail', 'role="form" class="form-horizontal"');
        ?>
        <input type="text" value="<?php echo $data['id_order']; ?>" class="form-control" name="id_order" hidden />
        <div class=" row2" style="background-color: #bba72d;">
          <div class="col-sm-12">
            <h6 style="text-align: left; color:white"> FORMULIR PERBAIKAN DAN PERAWATAN RUMAH
            </h6>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Nama</label>
          </div>
          <div class="col-sm-1">
            <h7>:</label>
          </div>
          <div class="col-sm-5">
            <h7> <?php echo $data['nama']; ?> </h7>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Tanggal Order</label>
          </div>
          <div class="col-sm-1">
            <h7>:</label>
          </div>
          <div class="col-sm-5">
            <h7><?php echo format_indo($data['tgl_order']); ?></h7>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Detail Order</label>
          </div>
          <div class="col-sm-1">
            <h7>:</label>
          </div>
          <div class="col-sm-5">
            <h7><?php echo $data['detail']; ?></h7>
          </div>
        </div>

        <div class=" row2">
          <div class="col-sm-5">
            <h7>Prioritas</label>
          </div>
          <div class="col-sm-1">
            <h7>:</label>
          </div>
          <div class="col-sm-5">
            <h7><?php echo $data['prioritas']; ?></h7>
          </div>
        </div>
        <br>

      </div>
    </div>
  </div>
  <div class="col-sm-6">
  <div class="card" style="background-color: #fff;">

      <div class="card-body">
  <div class=" row2" style="background-color: #737204;">
    <div class="col-sm-12">
      <h6 style="text-align: left; color:white"> HASIL PEMERIKSAAN PETUGAS
      </h6>
    </div>
  </div>

  <div class=" row2">
    <div class="col-sm-5">
      <h7>Tanggal Pemeriksaan</label>
    </div>
    <div class="col-sm-1">
      <h7>:</label>
    </div>
    <div class="col-sm-5">
      <h7><?php echo format_indo($data['tgl_pemeriksaan']); ?></h7>
    </div>
  </div>

  <div class=" row2">
    <div class="col-sm-5">
      <h7>Estimasi Kebutuhan</label>
    </div>
    <div class="col-sm-1">
      <h7>:</label>
    </div>
    <div class="col-sm-5">
      <h7><?php echo $data['kebutuhan']; ?></h7>
    </div>
  </div>

  <div class=" row2">
    <div class="col-sm-5">
      <h7>Estimasi Waktu Pengadaan Material</label>
    </div>
    <div class="col-sm-1">
      <h7>:</label>
    </div>
    <div class="col-sm-5">
      <h7><?php echo $data['estimasi_pengadaan']; ?></h7>
    </div>
  </div>

  <div class=" row2">
    <div class="col-sm-5">
      <h7>Estimasi Waktu Pengerjaan</label>
    </div>
    <div class="col-sm-1">
      <h7>:</label>
    </div>
    <div class="col-sm-5">
      <h7><?php echo $data['estimasi_pengerjaan']; ?></h7>
    </div>
  </div>

  <div class=" row2">
    <div class="col-sm-5">
      <h7>Dikerjakan Dengan</h7>
    </div>
    <div class="col-sm-1">
      <h7>:</label>
    </div>
    <div class="col-sm-5">
      <h7><?php echo $data['dikerjakandengan']; ?></h7>
    </div>
  </div>

  <div class=" row2">
    <div class="col-sm-5">
      <h7>Ketersediaan Budget</h7>
    </div>
    <div class="col-sm-1">
      <h7>:</label>
    </div>
    <div class="col-sm-5">
      <h7><?php echo $data['ketersediaan']; ?></h7>
    </div>
  </div>
  <br>
</div>
</div>
</div>






<link href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css " rel="stylesheet" />
<script src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.min.js"></script>
<script>
  $(".theSelect").select2();
</script>