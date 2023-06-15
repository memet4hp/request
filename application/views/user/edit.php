<style>

body {
            color: #5c5c5c;
         }
         #mybutton {
            position: relative;
            
            left: 90%;
            top: -25px;
      cursor: pointer;
         }
         .myform {   
            background: #fafafa;
            
            border: 1px solid #f4f4f4;
         }
         .myinput {
            width: 100%;
            padding: 5px;
         }

</style>


<section class="content">
  <div class="row">
    <div class="col-xs-12">

      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">Form Edit User</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <?php
        echo form_open_multipart('user/edit', 'role="form" class="form-horizontal"');
        echo form_hidden('id_user', $user['id_user']);
        ?>

        <div class="box-body">

          <div class="form-group">
            <label class="col-sm-2 control-label">Nama Lengkap</label>

            <div class="col-sm-4">
              <input type="text" value="<?php echo $user['nama_lengkap']; ?>" name="nama_lengkap" class="form-control" placeholder="Masukkan Nama Lengkap">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">Username</label>

            <div class="col-sm-4">
              <input type="text" value="<?php echo $user['username']; ?>" name="username" class="form-control" placeholder="Masukan Username">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">Password</label>

            <div class="col-sm-4">
              <input class="myinput" type="password" name="password" value="" id="pass">
              <span id="mybutton" onclick="change()"><i class="glyphicon glyphicon-eye-open"></i></span>
              <!-- <input type="password"   name="password" class="form-control" placeholder="Masukan Password"> -->
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">Level User</label>

            <div class="col-sm-4">
              <?php
              echo cmb_dinamis('level_user', 'tbl_level_user', 'nama_level', 'id_level_user', $user['id_level_user']);
              ?>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label"></label>

            <div class="col-sm-1">
              <button type="submit" name="submit" class="btn bg-green btn-flat">Simpan</button>
            </div>

            <div class="col-sm-1">
              <?php
              echo anchor('user', 'Kembali', array('class' => 'btn btn-danger btn-flat'));
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

<script>

function change()
         {
            var x = document.getElementById('pass').type;

            if (x == 'password')
            {
               document.getElementById('pass').type = 'text';
               document.getElementById('mybutton').innerHTML = '<i class="glyphicon glyphicon-eye-close"></i>';
            }
            else
            {
               document.getElementById('pass').type = 'password';
               document.getElementById('mybutton').innerHTML = '<i class="glyphicon glyphicon-eye-open"></i>';
            }
         }

</script>