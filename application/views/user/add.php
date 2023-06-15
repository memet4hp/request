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
                <h3 class="box-title">Add User</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php
                echo form_open_multipart('user/add', 'role="form" class="form-horizontal"');
            ?>

                <div class="box-body">

                  <div class="form-group">
                      <label class="col-sm-2 control-label">Full Name</label>

                      <div class="col-sm-4">
                        <input type="text" name="nama_lengkap" class="form-control" placeholder=" Full Name" required>
                      </div>
                  </div>

                  <div class="form-group">
                      <label class="col-sm-2 control-label">Username</label>

                      <div class="col-sm-4">
                        <input type="text" name="username" class="form-control" placeholder=" Username" required>
                      </div>
                  </div>

                  <div class="form-group">
                      <label class="col-sm-2 control-label">Password</label>

                      <div class="col-sm-4">
                      <input class="myinput" type="password" name="password" value="" id="pass">
              <span id="mybutton" onclick="change()"><i class="glyphicon glyphicon-eye-open"></i></span>
                      </div>
                  </div>

                  <div class="form-group">
                      <label class="col-sm-2 control-label">Level User</label>

                      <div class="col-sm-4">
                        <?php
                          echo cmb_dinamis('level_user', 'tbl_level_user', 'nama_level', 'id_level_user');
                        ?>
                      </div>
                  </div>

                   

            
                      <label class="col-sm-2 control-label"></label>

                       
                        <button type="submit" name="submit" class="btn btn-success margin  " >Save</button>
                     

                     
                        <?php
                          echo anchor('user', 'Back', array('class'=>'btn btn-success '));
                        ?>
                      </div>
                  </div>

                </div>
                <!-- /.box-body -->
            </form>
          </div>
          <!-- /.box -->
         
    
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