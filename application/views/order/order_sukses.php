<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="<?php echo base_url(); ?>assets/foto/icon.png" type="image/gif">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<?php echo base_url(); ?>css/styles-user.css">
</head>

<style>
.content-wrapper {
 
    background-color: #2e7ba6;
}

.btn-hijau {
    color: #fff;
    background-color: #0d3348;
    border-width: 2px;
    border-color: #fff;
    border-radius: 5px;
    font-weight: bold;
    padding: 8px;
    display: block;
}

.btn-hijau:hover {
    color: #0d3348;
    background-color: #fff;
    border-width: 2px;
    border-color:
    
    #0d3348;
}

.card-notif {
    
	padding: 25px ;
	background-color: #164a7cc9;
	font-size: 18px;
    color:white;
    margin-top:30%;
    border:solid;
    border-color:white;
    border-radius:10px;
}

 
</style>

<div class="container">
    <section class="content">
        <div class="form-row2">
            <div class=" col-sm-4 mx-auto center ">
                <div class="card-notif ">
                    <div class=" " style="text-align: center;">
                        <div class="simbol">
                            <img width="60px" height="auto" src="<?php echo base_url(); ?>assets/img/check.png" />
                        </div>
                        
                        Order Berhasil.
                        <br>
                        Silahkan cek progress secara berkala pada menu Informasi Order.
                        <br>
                        <br>
                        <center>
                            <div class="col-lg-8">
                                <a href="<?php echo base_url();?>order" class="btn btn-hijau">Order Baru</a>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
</div>

</section>