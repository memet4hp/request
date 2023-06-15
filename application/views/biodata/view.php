<style>
  table,
  tr,
  td,
  th {
    text-align: center;

  }


  .badge {
    display: inline-block;
    padding: .25em .4em;
    font-size: 100%;
    font-weight: 00;
    line-height: 1;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25rem;
    transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
  }
</style>

<div class="page-header">
  <div class="page-block">
    <div class="row align-items-center">
      <div class="col-md-12">
        <div class="page-header-title">
          <h5 class="m-b-10">Users</h5>
        </div>
        <!-- <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo site_url('home') ?>"><i class="feather icon-home"></i></a></li>
        </ul> -->
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-sm-12">
    <div class="card">
      <div class="card-header">

        <div class="card-header-right">
          <div class="float-right">
          
          </div>
          <div class="btn-group card-option">
            <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="feather icon-more-horizontal"></i>
            </button>
            <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
              <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
              <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
              <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
              <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="card-body  >
                <div class="">
                    <div class=" customer-scroll">
        <?php
        echo anchor('biodata/add', '<button  class="btn btn-facebook fa fa-plus"> Add User</button>');
         ?><p></p>
           <table id="example" class="table  table-bordered table-striped  table-hover  table-full-width">
          <thead>
            <tr style="background-color:#37527d; color:white;">

              <th style="text-align: center;">No</th>
              <th style="text-align: center;">Nama</th>
              <th style="text-align: center;">NIK</th>
              <th style="text-align: center;">Occupation</th>
              <th style="text-align: center;">Department</th>
              <th style="text-align: center;">Action</th>
          </thead>

          <tbody>
            <?php
            $no = 0;
            foreach ($biodata->result_array() as $t) :
              $no++;
            ?>
              <tr>
                <td style="text-align: center;"><?php echo $no ?></td>
                <td>
                  <?php echo $t['nama']; ?> <br>
                </td>
                <td style="text-align: center;">
                  <?php echo $t['nik']; ?> <br>
                </td>
                <td style="text-align: center;">
                  <?php echo $t['section']; ?> <br>
                </td>
                <td style="text-align: center;">
                  <?php echo $t['department']; ?> <br>
                </td>
                <td style="text-align: center;">
                  <!-- <a class="btn btn-sm btn-gradient-info" color:"#fff" data-toggle="modal" data-target="#modal_edit<?php echo $t['id']; ?>"> <i class="fa fa-edit  "></i> </a> -->
                  <button class="btn btn-sm btn-gradient-info move-data" title = "Edit" data-toggle="modal" data-target="#modal_edit<?php echo $t['id']; ?>"><i class="fa fa-edit"></i></button>
                  <a href="<?php echo base_url(); ?>biodata/delete/<?php echo $t['id']; ?>" class="btn btn-sm btn-gradient-danger remove-data-biodata" title="DELETE"> <i class="fa fa-trash fa-fw"></i> </a>
                </td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
  <!-- /.col -->
</div>

<?php

foreach ($biodata->result_array() as $t) :
  $nama = $t['nama'];
  $id = $t['id'];
  $nik = $t['nik'];
  $section =  $t['section'];
  $department = $t['department'];
?>
  <div class="modal fade" id="modal_edit<?php echo $id; ?>" tabindex="-5" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">

        <form class="form-horizontal" method="post" action="<?php echo base_url() . '/biodata/edit' ?>">
          <div class="box box-success">
            <div class="modal-body bg-green">


              <input name="id" value="<?php echo $id; ?>" class="form-control" type="hidden" readonly>

              <div class="form-group">
                <label class="control-label col-xs-3">Nama</label>
                <div class="col-xs-8">
                  <input name="nama" value="<?php echo $nama; ?>" class="form-control" type="text">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">NIK</label>
                <div class="col-xs-8">
                  <input name="nik" value="<?php echo $nik; ?>" class="form-control" type="text">
                </div>

              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Occupation</label>
                <div class="col-xs-8">
                  <input name="section" value="<?php echo $section; ?>" class="form-control" type="text">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Department</label>
                <div class="col-xs-8">
                  <input name="department" value="<?php echo $department; ?>" class="form-control" type="text">
                </div>
              </div>



            </div>
            <div class="box box-success">

              <div class="modal-footer">
                <button type="button" class="btn btn-gradient-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success"><i class="icon-checkmark-circle2"></i> Simpan</button>
              </div>
        </form>
      </div>
    </div>
  </div>
  </div>
  </div>

<?php endforeach; ?>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/custom_template/datatables.net/dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/custom_template/datatables.net/datatables.min.css">

<script>
  $(document).ready(function() {
    $('#example').DataTable({
      "scrollY": 350,
      paging: false,




    });
  });
</script>