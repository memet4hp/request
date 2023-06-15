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
<div class="page-header-titles">Database Rumah</div>

<section class="content">
    
        <div class="row">
            <div class="col-12">
                <div class="card">
                
                    <div class="form-row2">
                        
                        <div class="form-group col-sm-2">
                            <label class="teks">Tahun Rumah</label>
                            <select class="form-control select-filter" id='sel_prioritas'>
                                <option value=''>Semua Data</option>
                                <?php foreach ($tahunrumah as $tahun) : ?>
                                <option value="<?php echo $tahun->tahun_rumah;?>"><?php echo $tahun->tahun_rumah;?></option>
                                 <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="form-group col-sm-2">
                            <label class="teks">Tipe</label>
                            <select class="form-control select-filter" id='sel_status'>
                            <option value=''>Semua Data</option>
                                <?php foreach ($tiperumah as $a) : ?>
                                <option value="<?php echo $a->tipe;?>"><?php echo $a->tipe;?></option>
                                 <?php endforeach ?>
                            </select>
                        </div>

                        <div class="form-group col-sm-2">
                            <label class="teks">Alokasi</label>
                            <select class="form-control select-filter" id='sel_status'>
                                <option value=''>Semua Data</option>
                                <?php foreach ($alokasirumah as $a) : ?>
                                <option value="<?php echo $a->alokasi;?>"><?php echo $a->alokasi;?></option>
                                 <?php endforeach ?>
                            </select>
                        </div>

                        <div class="form-group col-sm-2">
                            <label class="teks">Status</label>
                            <select class="form-control select-filter" id='sel_status'>
                                <option value=''>Semua Data</option>
                                <?php foreach ($statusrumah as $a) : ?>
                                <option value="<?php echo $a->status;?>"><?php echo $a->status;?></option>
                                 <?php endforeach ?>
                            </select>
                        </div>
                    </div>

                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example" class="table table-fullwidht  table-bordered  table-hover">

                            <thead>
                                <tr style="background-color: #0D72A1 ; color:white;">

                                    <th width="1%">No</th>
                                    <th width="5%">ID Rumah</th>
                                    <th width="25%">User</th>
                                    <th width="10%">Dept </th>
                                    <th width="10%">Alokasi</th>
                                    <th width="6%">Tipe</th>
                                    <th width="6%">Tahun Rumah</th>
                                    <th width="16%">Status</th>
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
        "scrollY": 500,
        fixedColumns: {
            rightColumns: 2
        },
        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('databaserumah/ajax_list') ?>",
            "type": "POST",
            "data": function(data) {
                // data.user = $('#user_department').val();
                data.prioritas = $('#sel_prioritas').val();
                data.status = $('#sel_status').val();

            }
        },

        //Set column definition initialisation properties.
        "columnDefs": [{
                targets: [2],
                className: 'dt-body-left'
            },
            {
                targets: [0, 1, 3,4,5,6,7],
                className: 'dt-body-center'
            },
            {
                targets: [],
                className: 'dt-body-justify'
            }
        ],
    });
    $('.select-filter').change(function() {
        userDataTable.ajax.reload()
    });

});
</script>