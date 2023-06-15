<style>
    table,
    tr,
    td,
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
</style>

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">Tracing</h5>
                </div>
                <!-- <ul class="breadcrumb"></ul>
                    <li class="breadcrumb-item"><a href="<?php echo site_url('reservationadmin') ?>"><i class="feather icon-reservationadmin"></i></a></li>
                </ul> -->
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <h5>Table Tracing </h5>
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
            <br>
            <div class="col-sm-12">
                <button class="btn btn btn-md-bold btn-facebook" id="select-now" onclick="nowShowing()">Now Showing</button>
                <button class="btn btn-md-bold btn-white" id="select-all" onclick="allPeriode()">All Periode</button>
            </div>
            <div class="col-sm-12" id="content-now">
                <h3>Now Showing Page is here</h3>
            </div>
            <div class="col-sm-12" id="content-all">
                <form class="form-horizontal" id="form-filter">
                    <div class="row">
                        <div class="form-group col-sm-4">
                            <label class="text-hitam">Input User / Department</label>
                            <div class="input-group">
                                <select class="form-control" name="user_departement" id="user_department" placeholder="Type User / Department" />
                                <option value="a">A</option>
                                <option value="bb">BB</option>
                            </select>
                                <div class="input-group-append">
                                    <button class="btn btn-primary text-hitam" >Search</button>  </div>
                            </div>
                        </div>
                        <div class="form-group col-sm-2">
                            <label class="text-hitam">Select Periode</label>
                            <select class="form-control select-filter" id='sel_periode'>
                                <option value=''>All</option>
                                <option value='1'>Today</option>
                                <option value='2'>Next 7 days</option>
                                <option value='3'>This Week</option>
                                <option value='4'>This Month</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-2 advanced-search">
                            <label class="text-hitam">Select Status</label>
                            <select class="form-control select-filter" id='sel_status'>
                                <option value=''>All Status</option>
                                <option value='0'>Waiting</option>
                                <option value='1'>Approved</option>
                                <option value='2'>Canceled</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-2 advanced-search">
                            <label>Select Meeting Room</label>
                            <select class="form-control select-filter" id='sel_room'>
                                <option value=''>All Meeting Room</option>
                                <option value='1'>DIAD meeting room</option>
                                <option value='2'>Main meeting room </option>
                                <option value='3'>Multimedia meeting room </option>
                            </select>
                        </div>
                        <div class="form-group col-sm-2 advanced-search">
                            <label>Select Teleconference</label>
                            <select class="form-control select-filter" id='sel_tele'>
                                <option value=''>All Teleconference</option>
                                <option value='1'>Google Meet</option>
                                <option value='2'>Microsoft Teams</option>
                                <option value='3'>Zoom Meeting</option>
                                <option value='4'>None</option>
                            </select>
                        </div>
                    </div>
                </form>
                <div class="card-body">
                    <div class="customer-scroll">
                        <div id="dt-content">
                            <table id="userTable" class="table table-bordered table-hover table-full-width">
                                <thead>
                                    <tr style="background-color:#3C5A99; color:white;">
                                        <th>No</th>
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
                                        <th>Detail</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/custom_template/datatables.net/dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/custom_template/datatables.net/datatables.min.css">


<script type="text/javascript">
    var table = null;
    nowShowing()
    $('#form-filter').submit(function(e) {
        e.preventDefault()
        if (table == null) {
            table = $('#userTable').css('width', '100%').DataTable({
                "processing": true,
                "serverSide": true,
                "order": [],
                "ajax": {
                    "url": "<?php echo site_url('tracing/ajax_list') ?>",
                    "type": "POST",
                    "data": function(data) {
                        data.user = $('#user_department').val();
                        data.periode = $('#sel_periode').val();
                        data.status = $('#sel_status').val();
                        data.room = $('#sel_room').val();
                        data.tele = $('#sel_tele').val();
                    }
                },
                "columnDefs": [{
                    "targets": [0],
                    "orderable": false,
                }],
                "initComplete": function() {
                    $('.advanced-search, #dt-content').show();
                }
            });
        } else {
            table.ajax.reload()
        }
    })
    $('.select-filter').change(function() {
        table.ajax.reload()
    });

    function nowShowing() {
        if (table != null) {
            table.clear()
            table.destroy()
            table = null
        }
        $('#form-filter').trigger("reset");
        $('#select-all').removeAttr('class').addClass('btn btn-md-bold btn-white')
        $('#select-now').removeAttr('class').addClass('btn btn btn-md-bold btn-facebook')
        $('#content-now').show()
        $('#content-all, .advanced-search').hide()
    }

    function allPeriode() {
        // $('#select-now').removeAttr('class').addClass('btn btn-md-bold btn-white')
        // $('#select-all').removeAttr('class').addClass('btn btn btn-md-bold btn-facebook')
        // $('#content-now, #dt-content').hide()
        $('#content-all').show()
    }
</script>