<div class="page-header">
  <div class="page-block">
    <div class="row align-items-center">
      <div class="col-md-12">
        <div class="page-header-title">
          <h5 class="m-b-10">Users</h5>
        </div>
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo site_url('dashboard') ?>"><i class="feather icon-home"></i></a></li>
          <!-- <li class="breadcrumb-item"><a href="#!"><?= $parent ?></a></li> -->
          <li class="breadcrumb-item"><a href="#!">Users</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>


<div class="row">
  <div class="col-sm-3">
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-header">
        <h5>Add User</h5>
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
      <div class="card-body">
        <?php
        echo form_open_multipart('biodata/add', 'role="form" class="form-horizontal"');
        ?>

        <div class="box-body">

          <div class="form-group">
            <label class="col-sm-12 control-label">Nama</label>
            <div class="col-sm-12">
              <input type="text" name="nama" class="form-control" required>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-12 control-label">NIK</label>
            <div class="col-sm-12">
              <input type="text" name="nik" class="form-control" required>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-12 control-label">Section</label>
            <div class="col-sm-12">
              <input type="text" name="section" class="form-control" required>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-12 control-label">Department</label>
            <div class="col-sm-12">
              <select type="text" name="department" class="form-control" required>
                <option value="">Select Department</option>
                <option value="Management">Management</option>
                <option value="Laboratory">Laboratory</option>
                <option value="DIAD">DIAD</option>
                <option value="Plant Breeding">Plant Breeding</option>
                <option value="Crop Protection">Crop Protection</option>
                <option value="Agronomy">Agronomy</option>
                <option value="Sustainable Oil Palm">Sustainable Oil Palm</option>
                <option value="FOES">FOES</option>
                
              </select>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label"></label>
            <div class="col-sm-4">
              <button type="submit" name="submit" class="btn btn-success">Save</button>
              <?php
              echo anchor('biodata', 'Back', array('class' => 'btn btn-danger filter'));
              ?>
            </div>
          </div>

        </div>


        <!-- /.box-body -->
        </form>
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
  </section>