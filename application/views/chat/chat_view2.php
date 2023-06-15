<style>
 
    th {
        text-align: center;
      display: none;
      background-color: teal;
    }

 
</style>

<div class="page-header">
  <div class="page-block">
    <div class="row align-items-center">
      <div class="col-md-12">
        <div class="page-header-title">
          <h5 class="m-b-10"><?= $title ?></h5>
        </div>
        <!-- <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo site_url('dashboard') ?>"><i class="feather icon-home"></i></a></li>
          <li class="breadcrumb-item"><a href="#!"><?= $parent ?></a></li>
          <li class="breadcrumb-item"><a href="#!"><?= $title ?></a></li>
        </ul> -->
      </div>
    </div>
  </div>
</div>


<div class="row">
  <div class="col-sm-4">
  <div class="card card-widget widget-user">
            <div class="widget-user-header bg-facebook">
        <h5 class="text-white">Gochat</h5>
        <div class="card-header-right2">
          <div class="float-right">
          </div>
        </div>
      </div>

      <div class="card-footer bg-facebook-body">
        <div class="">
          <div class="customer-scroll">
            <table id="example"  class="table    table-hover table-full-width dataTable">
              <thead>
                <th style="width: 30px; background-color: white;"> </th>
                <th style="background-color: white;"> </th>
              </thead>
              <tbody>
                <?php
                $no = 1;
                foreach ($data->result_array() as $i) :
                  $id_pengirim = $i['id_pengirim'];
                  $id_penerima = $i['id_penerima'];
                  $isi = $i['isi'];
                  $status = $i['status'];
                  $tanggal_kirim = $i['tanggal_kirim'];
                ?>
                  <tr >
                    <td style="width: 50px; background-color: #EAEFFA;"> <img src="<?php echo base_url(); ?>assets/mr/icon.png" width="40" height="35" ></td>
                    <td class="text-bold" style=" color:teal; text-align: left; background-color: #EAEFFA;"><?php echo  $id_pengirim ?> <br> <?php echo $isi ?> </br></td>
                    <!-- <td><?php echo $id_penerima ?></td>
                    <td><?php echo $isi ?></td>
                    <td><?php echo $tanggal_kirim ?></td> -->
                  </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript" src="<?php echo base_url(); ?>assets/custom_template/datatables/dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/custom_template/datatables/datatables.min.css">

<script>
  $(document).ready(function() {
 
    $('#example ').DataTable({
      
      "paging": false,
      "scrollY": "450px",
      "bInfo" : false,
      "searching": false,
      fixedColumns: {
        rightColumns: 3
      },
      columnDefs: [{
        targets: -1,
        className: 'dt-body-right'
      }, ]
    });
  });
</script>