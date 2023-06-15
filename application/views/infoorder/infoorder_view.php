<style>
    table,
    th,
    tr {
        text-align: center;
    }

    td {
        text-align: center;
    }

    .btn-space {
        margin-right: 5px;
        margin-bottom: 5px;
    }

    .swal2-popup {
        font-family: inherit;
        font-size: 1.2rem;
    }

    .btn-group,
    .btn-group-vertical {
        position: relative;
        display: initial;
        vertical-align: middle;
    }

    .dataTables_wrapper {
        font-family: 'Calibri';
        font-size: 14px;
        position: relative;
        clear: both;
        *zoom: 1;
        height: 1;
        zoom: 1;
    }

    .container {
        width: 120%;
    }

    .td {
        height: 50px;
    }

    .form-row2 {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-right: -5px;
        margin-left: 8px;
    }

    label {
        font-weight: bold;
        color: black;
    }
</style>


<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">Data Order Perumahan</h5>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="col-sm-12">
                <br>
                <br>
                <form class="form-horizontal" id="form-filter">
                    <div class="form-row2">

                        <div class="form-group col-sm-4"></div>
                        <div class="form-group col-sm-8"><label>
                                <center>
                                    <h5>Masukkan NIK </h5>
                            </label></center>
                            <div class="input-group">
                                <input class="form-control" name="user_nik" id="user_nik" placeholder="Masukkan NIK" />
                                <div class="input-group-append">
                                    <button type="button" id="btn-filter" class="btn btn-primary">Lakukan Pencarian</button>

                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="card-body">
                       
                            <div id="dt-content" style="display:none;" >
                                <table id="tableee" class="table table-bordered table-hover nowrap table-full-width">
                                    <thead>
                                        <tr style="background-color:#3C5A99; color:white;">

                                            <th width="1%">No</th>
                                            <th width="6%">Jenis Order</th>
                                            <th width="6%">Jenis Rumah</th>
                                            <th width="12%">Nama</th>
                                            <th width="12%">NIK</th>
                                            <th width="10%">Tanggal Order</th>
                                            <th width="40%">Detail Order</th>
                                            <th width="6%">Prioritas</th>
                                            <th width="6%">Status</th>
                                            <th width="6%">Evaluasi User</th>
                                            <th width="6%">Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </section>

                    <script src="<?php echo base_url(); ?>assets/custom_template/datatables/dataTables.min.js"></script>
                    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/custom_template/datatables/datatables.min.css">

                    <script>
                       
                        var table;

                        $(document).ready(function() {

                            //datatables
                            table = $('#tableee').css('width', '100%').DataTable({

                                "processing": true, //Feature control the processing indicator.
                                "serverSide": true, //Feature control DataTables' server-side processing mode.
                                "order": [], //Initial no order.

                                // Load data for the table's content from an Ajax source
                                "ajax": {
                                    "url": "<?php echo site_url('infoorder/ajax_list') ?>",
                                    "type": "POST",
                                    "data": function(data) {
                                        data.nik = $('#user_nik').val();
                                    }
                                },

                                //Set column definition initialisation properties.
                                "columnDefs": [{
                                    "targets": [0], //first column / numbering column
                                    "orderable": false, //set not orderable
                                }, ],
                                
                            });

                            $('#btn-filter').click(function() { //button filter event click
                                $('#dt-content').show();
                               
                                table.ajax.reload();
                                 //just reload table
                            });
                            $('#btn-reset').click(function() { //button reset event click
                                $('#form-filter')[0].reset();
                                table.ajax.reload(); //just reload table
                            });

                        });
                    </script>