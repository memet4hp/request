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
    background-color: #234A9C;
    /* border-top-radius: 20px; */
    border-style: solid;
    border-width: thin;
    padding-top: 10px;
  }
</style>


<div class="page-header">
  <div class="page-block">
    <div class="row align-items-center">
      <div class="col-md-12">
        <div class="page-header-title">
          <h5 class="m-b-10">Pemeriksaan Petugas (Perawatan Kantor)</h5>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="row">

  <div class="col-sm-6">
    <div class="card" style="background-color: #fff;">

      <div class="card-body">
        <?php
        echo form_open_multipart('pemeriksaankantor/edit', 'role="form" class="form-horizontal"');
        ?>
        <input type="text" value="<?php echo $data['id_order']; ?>" class="form-control" name="id_order" hidden />
        <div class=" row2" style="background-color: #737204;">
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
      </div>
    </div>
  </div>

  <div class="col-sm-6">
    <div class="wrapper">
      <div class="card-top">
        <br>
        <h6 style="text-align: center;color:white"> HASIL PEMERIKSAAN PETUGAS
        </h6>
        <br>
      </div>
      <div class=" card-body">
        <?php
        echo form_open_multipart('pemeriksaankantor/edit', 'role="form" class="form-horizontal"');
        ?>

        <div class=" row2">
          <div class="col-sm-5">
            <h7>Tanggal Pemeriksaan</label>
          </div>
          <div class="col-sm-7">
            <input type="date" class="form-control" name="tgl_pemeriksaan" required />
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Estimasi Kebutuhan Material</label>
          </div>
          <div class="col-sm-7">
            <textarea class="form-control" name="kebutuhan" required /></textarea>
          </div>
        </div>

        <div class=" row2">
          <div class="col-sm-5">
            <h7>Estimasi Waktu Pengadaan Material</label>
          </div>
          <div class="col-sm-7">
            <input type="text" name="estimasi_pengadaan" class="form-control" required /> </textarea>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Estimasi Waktu Pengerjaan</label>
          </div>
          <div class="col-sm-7">
            <input type="text" name="estimasi_pengerjaan" class="form-control" required /> </textarea>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Dikerjakan Dengan</h7>
          </div>
          <h7>
            <div class="col-sm-12">
              <div class="form-check">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="dikerjakandengan" required value="Swakelola"> Swakelola
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="dikerjakandengan" required value="Outsourcing"> Outsourcing
                </label>
              </div>
            </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Ketersediaan Budget</h7>
          </div>
          <h7>
            <div class="col-sm-12">
              <div class="form-check">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="ketersediaan" required value="Tersedia"> Tersedia
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="ketersediaan" required value="Tidak Tersedia"> Tidak Tersedia
                </label>
              </div>
            </div>
        </div>
        <br>
        <div class="form-row">
          <div class="form-group col-md-4">
          </div>
          <div class="form-group col-md-4">
            <button type="submit" name="simpan" style="background-color: #0077b6;color:white" class="btn btn-md btn-block  "><i class="feather icon-save"> Submit</i></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<link href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css " rel="stylesheet" />
<script src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.min.js"></script>
<script>
  $(".theSelect").select2();
</script>