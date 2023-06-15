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

  div.ex3 {
    background-color: #f5f5f5;
    height: 110px;
    /* width: 530px; */
    overflow-y: auto;
    overflow-x: auto;
    border: gray;
    border-style: dashed;

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
    border-radius: 40px;
  }

  .row2 {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: 0px;
    margin-left: 0px;
  }

  .wrapper {


    background-color: #fff;
    border-radius: 15px;
    box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #f3eaea
  }

  .wrapper .form-control {
    padding-left: 20px;
    margin-bottom: 20px;
    border-radius: 5px;
    box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff;
    border: 1px solid #d8d8d8;
  }

  .col-sm-6 {
    -ms-flex: 0 0 50%;
    flex: 0 0 50%;
    max-width: 42%;

    margin-left: 65px;
  }

  .card-top {
    background-color: #0077b6;
    /* border-top-radius: 20px; */
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    box-shadow: 13px 13px 20px #cbced1;

    padding-top: 10px;
  }

  .card-body {
    background-color: #FFF;
    margin-bottom: 20px;
    padding-bottom: 28px;
    border-bottom-left-radius: 20px;
    border-bottom-right-radius: 20px;
  }
  
</style>

<div class="page-header">
  <div class="page-block">
    <div class="row align-items-center">
      <div class="col-md-12">
        <div class="page-header-title">
          <h5 class="m-b-10">Order Perawatan Kantor</h5>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-sm-3">
  </div>
  <div class="col-sm-6">

    <div class="wrapper">
      <div class="card-top">
        <br>
        <h6 style="text-align: center; color:white"> FORMULIR PERBAIKAN DAN PERAWATAN KANTOR
        </h6>
        <br>
      </div>
      <div class="card-body">
        <?php
        echo form_open_multipart('orderkantor/add', 'role="form" class="form-horizontal"');
        ?>

        <input type="text" class="form-control" name="id_reg" required value="<?php echo $kodeunik; ?>" hidden />
        <input type="text" class="form-control" name="approve" required value="0" hidden />
        <input type="text" class="form-control" name="jenis" required value="KANTOR" hidden />
        <input type="hidden" name="tanggal_registrasi" value="<?php echo date("Y-m-d H:i:s"); ?>" />

        <div class=" row2">
          <div class="col-sm-5">
            <h7>Nama</label>
          </div>
          <div class="col-sm-7">
            <b><input type="text" class="form-control" name="nama" placeholder="Nama Anda" required /> </b>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Tanggal Order</label>
          </div>
          <div class="col-sm-7">
            <b><input type="date" class="form-control" name="tgl_order" required /> </b>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Detail Order</label>
          </div>
          <div class="col-sm-7">
            <b><textarea rows="10" cols="50" class="form-control" name="detail" required /> </textarea>
          </div>
        </div>
        <div class=" row2">
          <div class="col-sm-5">
            <h7>Prioritas</h7>
          </div>
          <h7>
            <div class="col-sm-12">
              <div class="form-check">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="prioritas" required value="Urgent"> Urgent
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="prioritas" required value="Standart"> Standart
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