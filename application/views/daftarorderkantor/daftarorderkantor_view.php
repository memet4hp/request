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
        width: 80%;
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
                <div class="form-row2">
                    <div class="form-group col-sm-2">
                        <label class="teks">Pilih Prioritas</label>
                        <select class="form-control select-filter" id='sel_prioritas'>
                            <option value=''>Semua Data</option>
                            <option value='Urgent'>Urgent</option>
                            <option value='Standart'>Standart </option>
                        </select>
                    </div>
               
                    <div class="form-group col-sm-2">
                        <label class="teks">Pilih Status</label>
                        <select class="form-control select-filter" id='sel_status'>
                            <option value=''>Semua Data</option>
                            <option value='0'>Menunggu pemeriksaan</option>
                            <option value='1'>Sedang dikerjakan </option>
                            <option value='2'>Selesai </option>
                        </select>
                    </div>
                </div>
                <div class="card-body p-3 mt-2">
                    <div class="">
                        <div class="customer-scroll  ">
                            <table id="example" class="table table-fullwidht  table-bordered  table-hover">
                                <thead>
                                    <tr style="color:white;">
                                        <th width="1%">No</th>
                                        <th width="12%">Nama</th>
                                        <th width="10%">Tanggal Order</th>
                                        <th width="40%">Detail Order</th>
                                        <th width="6%">Prioritas</th>
                                        <th width="6%">Status</th>
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
                    $(document).ready(function() {
                        var userDataTable = $('#example').DataTable({
                            paging: false,
                            fixedColumns: {
                                rightColumns: 2
                            },
                            "processing": true, //Feature control the processing indicator.
                            "serverSide": true, //Feature control DataTables' server-side processing mode.
                            "order": [], //Initial no order.

                            // Load data for the table's content from an Ajax source
                            "ajax": {
                                "url": "<?php echo site_url('daftarorderkantor/ajax_list') ?>",
                                "type": "POST",
                                "data": function(data) {
                                    // data.user = $('#user_department').val();
                                    data.prioritas = $('#sel_prioritas').val();
                                    data.status = $('#sel_status').val();

                                }
                            },

                            //Set column definition initialisation properties.
                            "columnDefs": [{
                                    targets: [1,3,5],
                                    className: 'dt-body-left'
                                },
                                {
                                    targets: [0,  2],
                                    className: 'dt-body-center'
                                }
                            ],
                        });
                        $('.select-filter').change(function() {
                            userDataTable.ajax.reload()
                        });

                    });
                </script>