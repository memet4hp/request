<html>

<head>
    <title>Print</title>
    <style>
        body {
            font-family: arial;
        }

        .tbl {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            border: 1px solid #000;
            width: 20%;
            padding-bottom: 8px;

        }

        .tbl td,
        .tbl th {
            border-bottom: 1px solid #000;
            padding-top: 10px;
        }

        .tbl2 th {
            padding-top: 8px;
            padding-bottom: 18px;
            text-align: center;
            background-color: #04AA6D;
            color: black;
            
        }

        .tbl2 {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            border: 1px solid #000;
            width: 100%;
            padding-bottom: 18px;
        }

        .tbl2 td,
        .tbl2 th {
            border-bottom: 1px solid #000;
            padding: 1px;
        }

        .tbl2 th {
            padding-top: 8px;
            padding-bottom: 8px;
            text-align: center;
            background-color: #ffffff;
            color: black;
            border: 1px solid #000;
        }

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: red;
            color: white;
            /* text-align: left; */
        }

        hr.solid {
            border-top: 4px double #000;
        }

        .row2 {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: 0px;
            margin-left: 0px;
        }

        .margin{
            padding-top:20px;
        }
 
        
    </style>
</head>

<body>
    <div style="width:100%;display:grid;grid-template-columns:25% 75%">
        <div style="background:white;height:45px">
            <img style="width: auto;height:45px" src="<?= base_url('assets/img/ss.jpg') ?>" />
        </div>
    </div>
    <hr class="solid">

    <?php
    $bulan = date('m');
    $tahun = date('y');
    ?>

 
    <h4 style="text-align: center;">FORMULIR PERBAIKAN DAN PERAWATAN RUMAH <br>
        No .... /FPPR/<?php echo $bulan ?>/<?php echo $tahun ?></h4>


        <hr class="single">


    <table class="tbl" style="width:100%;font-size:18px;border:0px;">
        <thead>
            <tr style="border:0px">
                <td style="border:0px;font-weight:bold" width="45%">A. Asal Order</td>
            </tr>
            <tr class="margin" style="border:0px">
                <td style="border:0px" width="45%">Alokasi</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"><?php echo $data['alokasi']; ?>
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Nama Peminta</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"><?php echo $data['nama_peminta']; ?>
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Tanggal Order</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"><?php echo format_indo($data['tanggal_order']); ?></td>
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Detail Order</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"><?php echo $data['detail_order']; ?>
            </tr>
            
            <tr style="border:0px">
                <td style="border:0px" width="45%">Prioritas</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"><?php echo $data['prioritas']; ?>
            </tr>
        </thead>
    </table>

    <br>
    <br>

    <hr class="single">
    <br>
 

    <table class="tbl" style="width:100%;font-size:18px;border:0px">
        <thead>
            <tr style="border:0px">
                <td style="border:0px;font-weight:bold" width="45%">B. Hasil Pemeriksaan Petugas</td>
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Tanggal Pemeriksaan</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"> 
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Estimasi Kebutuhan Material</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"> -
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%"> </td>
                <td style="border:0px" width="3%"> </td>
                <td style="border:0px"> -
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%"> </td>
                <td style="border:0px" width="3%"> </td>
                <td style="border:0px"> -
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%"> </td>
                <td style="border:0px" width="3%"> </td>
                <td style="border:0px"> -
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%"> </td>
                <td style="border:0px" width="3%"> </td>
                <td style="border:0px"> -
            </tr>
           
            <tr style="border:0px">
                <td style="border:0px" width="45%">Estimasi Waktu Pengadaan Material</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"> 
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Estimasi Waktu Pengerjaan</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"> 
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Dikerjakan Dengan</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"  > [ &NonBreakingSpace; &NonBreakingSpace; ] Swakelola. &NonBreakingSpace; &NonBreakingSpace; &NonBreakingSpace; &NonBreakingSpace;    [ &NonBreakingSpace; &NonBreakingSpace; ] Outsourching.
               
            </tr>
            <tr style="border:0px">
                <td style="border:0px" width="45%">Ketersediaan Budget</td>
                <td style="border:0px" width="3%">:</td>
                <td style="border:0px"  > [ &NonBreakingSpace; &NonBreakingSpace; ] Tersedia &NonBreakingSpace; &NonBreakingSpace; &NonBreakingSpace; &NonBreakingSpace;  &NonBreakingSpace;  &NonBreakingSpace;  [ &NonBreakingSpace; &NonBreakingSpace; ] Tidak Tersedia.

            </tr>
        </thead>
    </table>



    </td>
    </tr>
    </thead>
    </table>

    </div>
</body>




</html>
<script>
    window.print();
</script>

<script src="<?php echo base_url() ?>assets/custom_template/plugins/bootstrap-datetimepicker/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url() ?>assets/custom_template/plugins/notification/js/bootstrap-growl.min.js"></script>
<script src="<?php echo base_url() ?>assets/custom_template/plugins/bootstrap/js/bootstrap.min.js"></script>