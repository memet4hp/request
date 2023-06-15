<style>
.form-row2 {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: 10px;
    margin-left: 10px;
}

option {
    font-size:14px;
}

.teks{
    font-size:16px;
margin-top:5px;
}
</style>

<!-- Main content -->
<div class="page-header-titles">Pengerjaan Rumah</div>

<section class="content">
    
        <div class="row">
            <div class="col-12">
                <div class="card">
                
                    <div class="form-row2">
                        
                        <div class="form-group col-sm-2">
                            <label class="teks">Pilih Prioritas</label>
                            <select class="form-control select-filter" id='sel_prioritas'>
                                <option value=''>Semua Data</option>
                                <option value='Urgent'>Urgent</option>
                                <option value='Standart'>Standart </option>
                            </select>
                        </div>

                        <div class="form-group col-sm-3">
                            <label class="teks">Pilih Status</label>
                            <select class="form-control select-filter" id='sel_status'>
                                <option value=''>Semua Data</option>
                                <option value='0'>Menunggu pemeriksaan</option>
                                <option value='1'>Sedang dikerjakan </option>
                                <option value='2'>Selesai </option>
                            </select>
                        </div>
                    </div>

                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example" class="table table-fullwidht  table-bordered  table-hover">

                            <thead>
                                <tr style="background-color: #0D72A1 ; color:white;">

                                <th width="1%">No</th>
                                        <th width="12%">Jenis Rumah</th>
                                        <th width="12%">Nama</th>
                                        <th width="10%">Tanggal Order</th>
                                        <th width="40%">Detail Order</th>
                                        <th width="6%">Prioritas</th>
                                        <th width="6%">Status</th>
                                        <th width="6%">Tindakan</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->

</section>


<script>
$(document).ready(function() {
    var userDataTable = $('#example').DataTable({
        paging: false,
        "scrollX": true,
        "scrollY": 310,
        fixedColumns: {
            rightColumns: 2
        },
        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('pengerjaanrumah/ajax_list') ?>",
            "type": "POST",
            "data": function(data) {
                // data.user = $('#user_department').val();
                data.prioritas = $('#sel_prioritas').val();
                data.status = $('#sel_status').val();

            }
        },

        //Set column definition initialisation properties.
        "columnDefs": [{
                targets: [2, 4],
                className: 'dt-body-left'
            },
            {
                targets: [0, 1, 3, 5],
                className: 'dt-body-center'
            }
        ],
    });
    $('.select-filter').change(function() {
        userDataTable.ajax.reload()
    });

});
</script>