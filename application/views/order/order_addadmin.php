<meta charset="utf-8">
<title>gomaintenance</title>

<style>
  h7 {
    color: #111;
    font-size: 17px;
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
  }

  .wrapper {
    background-color: #fff;
    border-style: solid;
    border-width: thin;
  }

  .wrapper2 {
    background-color: #fff;
    border-color: black;
    border-style: solid;
    border-width: thin;
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
    background-color: #1B4295;
    box-shadow: 13px 13px 20px #cbced1;
  }

  .card-top2 {
    background-color: #1B4295;
    box-shadow: 13px 13px 20px #cbced1;
  }

  .card-top2 {
    background-color: #EFF3F6;

  }

  .card-body2 {
    background-color: #EFF3F6;
    margin-bottom: 20px;
    padding-bottom: 28px;
    border-bottom-left-radius: 20px;
    border-bottom-right-radius: 20px;
  }

  h6 {
    font-size: 18px;
    font-weight: 600;
    margin-block-end: 0px;
    color: #2b2525;
    padding-top: 12px;
  }

  ul.list {
    list-style-type: square;
    text-align: justify;
    font-size: 15px;
    padding-right: 20px;
    padding-bottom: 6px;
    line-height: 28px;
  }
</style>

<br>

<div class="row">
  <div class="col-sm-6">

    <div class="wrapper">
      <div class="card-top2">
        <br>
        <h4 style="text-align: center; color:black; "> PANDUAN PENGGUNAAN
        </h4>
        <br>
      </div>

      <br>
      <ul class="list">
        <li>
          <h6>Kategori Perbaikan</h6>
          <h7>Silahkan pilih kategori perbaikan apakah rumah atau kantor</h7>
        </li>
        <li>
          <h6>Nama</h6>
          <h7> Silahkan isi nama pengorder (bila perbaikan kantor), dan nama pemilik rumah (bila perbaikan rumah)
        </li>
        <li>
          <h6>NIK</h6>
          <h7> Silahkan isi NIK pengorder (bila perbaikan kantor), dan NIK pemilik rumah (bila perbaikan rumah)
        </li>
        <li>
          <h6>Tanggal Order</h6>
          <h7> Masukkan tanggal order
        </li>
        <li>
          <h6>Detail Order</h6>
          <h7>Silahkan masukkan kerusakan apa saja yang ingin di ajukan
        </li>
        <li>
          <h6>Prioritas</h6>
          <h7>Silahkan pilih prioritas apakah standart maupun urgent
        </li>

        <br>

      </ul>
    </div>

  </div>
  <div class="col-sm-6">

    <div class="wrapper">
      <div class="card-top">
        <br>
        <h4 style="text-align: center; color:white; "> FORMULIR PERBAIKAN DAN PERAWATAN
        </h4>
        <br>
      </div>
      <div class="card-body">
        <?php
        echo form_open_multipart('order/add', 'role="form" class="form-horizontal"');
        ?>

        <input type="text" class="form-control" name="id_reg" required value="<?php echo $kodeunik; ?>" hidden />
        <input type="text" class="form-control" name="approve" required value="0" hidden />
        <!-- <input type="text" class="form-control" name="jenis" required value="RUMAH" hidden /> -->
        <input type="hidden" name="tanggal_registrasi" value="<?php echo date("Y-m-d H:i:s"); ?>" />

        <div class=" row2">
          <div class="col-sm-5">
            <h7> Kategori Perbaikan</h7>
          </div>
          <div class="col-sm-7">
            <select class="form-control" name="jenis" required /> </b>
            <option value="">Pilih kategori</option>
            <option value="Rumah">Rumah</option>
            <option value="Kantor">Kantor</option>

            </select>
          </div>
          <div class="col-sm-5 ">
            <h7 class="referral" style="display:none;"> Jenis Rumah</h7>
          </div>
          <div class="col-sm-7  ">
            <select class="form-control  referral" style="display:none;" name="jenisrumah" /> </b>
            <option value="">Pilih jenis rumah</option>
            <option value="Rumah Staff">Rumah Staff</option>
            <option value="Rumah Non Staff">Rumah Non Staff</option>

            </select>
          </div>
        </div>
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
            <h7>NIK</label>
          </div>
          <div class="col-sm-7">
            <b><input type="text" class="form-control" name="nik" placeholder="NIK Anda" required /> </b>
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
            <b><textarea rows="3" cols="30" class="form-control" name="detail" required /> </textarea>
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
                  <input type="radio" class="form-check-input" name="prioritas" required value="Standart"> Normal
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="prioritas" required value="Urgent"> Urgent
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

  $("select").change(function() {
    // hide all optional elements
    $('.optional').css('display', 'none');

    $("select option:selected").each(function() {
      if ($(this).val() == "Rumah") {
        $('.referral').css('display', 'block');
        $('.referral').attr('required', true);
      } else if ($(this).val() == "Kantor") {
        $('.referral').css("display", "none");
      }
    });
  });
</script>