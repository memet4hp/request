<style>
  
    th {
        text-align: center;
    }

    .table-hover {
        background-color: #e4ebfc;
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

    .form-row2 {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-right: -5px;
        margin-left: 8px;

    }

    .form-control {
        font-size: 14px;
        padding: 10px 10px;
    }

    .teks {
        font-weight: bolder;
        color: #000000;
    }

    .icon-zoom{
        background: url('<?php echo base_url() ?>assets/custom_template/plugins/zoom.svg') no-repeat center center / contain;
        content: url('<?php echo base_url() ?>assets/custom_template/plugins/zoom.svg');
    }

    .icon-gm{
        background: url('<?php echo base_url() ?>assets/custom_template/plugins/google-meet.svg') no-repeat center center / contain;
        content: url('<?php echo base_url() ?>assets/custom_template/plugins/google-meet.svg');
    }

    .icon-mt{
        background: url('<?php echo base_url() ?>assets/custom_template/plugins/microsoft-teams.svg') no-repeat center center / contain;
        content: url('<?php echo base_url() ?>assets/custom_template/plugins/microsoft-teams.svg');
    }
</style>

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">Archive</h5>
                </div>
                <!-- <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo site_url('reservationadmin') ?>"><i class="feather icon-reservationadmin"></i></a></li>
                </ul> -->
            </div>
        </div>
    </div>
</div>



<div class="row">
    <div class="col-sm-12">
        <div class="card">
 
            <br>

            <div class="form-row2">

                <div class="form-group col-sm-2">
                    <label class="teks">Select Year </label>
                    <select class="form-control select-filter" id='sel_year'>
                        <option value=''>All</option>
                        <option value='1'>2021</option>
                        <option value='2'>2022</option>

                    </select>
                </div>

                <div class="form-group col-sm-2">
                    <label class="teks">Select Period </label>
                    <select class="form-control select-filter" id='sel_periode'>
                        <option value=''>All</option>
                        <option value='5'>Now Meeting</option>
                        <option value='1'>Today</option>
                        <option value='2'>Next 7 days</option>
                        <option value='3'>This Week</option>
                        <option value='4'>This Month</option>
                    </select>
                </div>

                <div class="form-group col-sm-2">
                    <label class="teks">Select Status</label>
                    <select class="form-control select-filter" id='sel_status'>
                        <option value=''>All Status</option>
                        <option value='0'>Waiting</option>
                        <option value='1'>Approved</option>
                        <option value='2'>Canceled</option>
                    </select>
                </div>

                <div class="form-group col-sm-2">
                    <label class="teks">Select Meeting Room</label>
                    <select class="form-control select-filter" id='sel_room'>
                        <option value=''>All Meeting Room</option>
                        <option value='1'>DIAD meeting room</option>
                        <option value='2'>Main meeting room </option>
                        <option value='3'>Multimedia meeting room </option>
                    </select>
                </div>

                <div class="form-group col-sm-2">
                    <label class="teks">Select Teleconference</label>
                    <select class="form-control select-filter" id='sel_tele'>
                        <option value=''>All Teleconference</option>
                        <option value='1'>Google Meet</option>
                        <option value='2'>Microsoft Teams</option>
                        <option value='3'>Zoom Meeting</option>
                        <option value='4'>None</option>
                    </select>
                </div>

                <?php
                $thisWeekEnd = date('Y-m-d', mktime(0, 0, 0, date("m"), date("d") + 7, date("Y")));
                ?>



            </div>



            <div class="card-body p-3 mt-2">

                <div class="customer-scroll">

                    <table id="userTable" class="table  table-bordered  table-hover  table-full-width">
                        <thead>
                            <tr style="background-color:#3C5A99; color:white;">
                                <th>No</th>
                                <th>Priority Status</th>
                                <th>Date</th>
                                <th>Start - End</th>
                                <th>Room</th>
                                <th>Scope</th>
                                <th>Subject</th>
                                <th>User</th>
                                <th>Department</th>
                                <th>Participant</th>
                                <th>Teleconference</th>
                             
                                <th>Status</th>
                                <th>Note</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
</div>



<script type="text/javascript" src="<?php echo base_url(); ?>assets/custom_template/datatables/dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/custom_template/datatables/datatables.min.css">
<script>
    $(document).ready(function() {
        var userDataTable = $('#userTable').DataTable({
            pageLength: 10,
            // scrollY: 400,
            scrollX: true,
            scrollCollapse: true,
            fixedColumns: {
                rightColumns: 2
            },
            "processing": true, //Feature control the processing indicator.
            "serverSide": true, //Feature control DataTables' server-side processing mode.
            "order": [], //Initial no order.

            // Load data for the table's content from an Ajax source
            "ajax": {
                "url": "<?php echo site_url('archive/ajax_list') ?>",
                "type": "POST",
                "data": function(data) {
                    // data.user = $('#user_department').val();
                    data.year = $('#sel_year').val();
                    data.periode = $('#sel_periode').val();
                    data.status = $('#sel_status').val();
                    data.room = $('#sel_room').val();
                    data.tele = $('#sel_tele').val();
                }
            },

            //Set column definition initialisation properties.
            "columnDefs": [{
                    targets: [ 11],
                    className: 'dt-body-right'
                },
                {
                    targets: [0, 1, 2,8,9,10],
                    className: 'dt-body-center'
                }
            ],

        });
        $('.select-filter').change(function() {
            userDataTable.ajax.reload()
        });

    });
</script>