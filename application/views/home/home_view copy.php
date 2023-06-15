<style>
    table,
    tr,
    td,
    th {
        text-align: center;
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
    }
</style>

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10"><?= $title ?></h5>
                </div>
            </div>
        </div>
    </div>
</div>

<?php

// ----------------------------------------------GRAPH-------------------------------------------------------------
$query = 'SELECT COUNT(*) AS hasil FROM tabel_data where kategori_perbaikan = "RUMAH"';
$main = $this->db->query($query)->row_array();
$query = 'SELECT COUNT(*) AS hasil FROM tabel_data where kategori_perbaikan = "KANTOR"';
$multimedia = $this->db->query($query)->row_array();



// ----------------------------------------------INFO-------------------------------------------------------------
$query = 'SELECT COUNT(*) AS hasil FROM tabel_data';
$total = $this->db->query($query)->row_array();

$query = 'SELECT COUNT(*) AS hasil FROM tabel_data where prioritas = "Urgent"';
$urgent = $this->db->query($query)->row_array();

$query = 'SELECT COUNT(*) AS hasil FROM tabel_data where prioritas = "Standart"';
$standart = $this->db->query($query)->row_array();



$query = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "0"';
$menunggu = $this->db->query($query)->row_array();

$query = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "1"';
$sedang = $this->db->query($query)->row_array();

$query = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "2"';
$selesai = $this->db->query($query)->row_array();

$r = 'SELECT COUNT(*) AS hasil FROM tabel_data where alokasi = "Rumah Staff"';
$rs = $this->db->query($r)->row_array();

$r = 'SELECT COUNT(*) AS hasil FROM tabel_data where alokasi = "Rumah Non Staff"';
$rns = $this->db->query($r)->row_array();


?>

<b>
    <label style="font-size: 18px;background-color: #055f5f;color:white" class="label ">Up to <?php echo date("d/m/Y") ?> <span class="" id="clock"></span> - Annual</label>
</b>
<p></p>
<div class="row">
    <div class="col-md-3">
        <div class="card card-widget widget-user">
            <div class="widget-user-header " style="background-color: #163D90;">
                <h4 class="widget-user-username text-white">Jumlah Order</h4>

            </div>
            <div class="widget-user-image">
            </div>
            <div class="card-footer ">
                <div class="row">
                    <div class="col-sm-12 ">
                        <div class="description-block" style="text-align: center;">
                            <h4 class="description-header"><?php echo $total['hasil'] ?></h4>
                            <span class="description-text">TOTAL ORDER</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="card card-widget widget-user">
            <div class="widget-user-header  " style="background-color: #163D90;">
                <h4 class="widget-user-username text-white">Prioritas</h4>
            </div>
            <div class="widget-user-image">
            </div>
            <div class="card-footer ">
                <div class="row">
                    <div class="col-sm-6 border-right">
                        <div class="description-block" style="text-align: center;">
                            <h4 class="description-header"><?php echo $urgent['hasil'] ?></h4>
                            <span class="description-text">URGENT</span>
                        </div>
                    </div>
                    <div class="col-sm-6 ">
                        <div class="description-block" style="text-align: center;">
                            <h4 class="description-header"><?php echo $standart['hasil'] ?></h4>
                            <span class="description-text">STANDART</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-5">
        <div class="card card-widget widget-user">
            <div class="widget-user-header " style="background-color: #163D90;">
                <h4 class="widget-user-username text-white">Status Pemeriksaan</h4>
            </div>
            <div class="widget-user-image">
            </div>
            <div class="card-footer ">
                <div class="row">
                    <div class="col-sm-3 border-right">
                        <div class="description-block" style="text-align: center;">
                            <h4 class="description-header"><?php echo $menunggu['hasil'] ?></h4>
                            <span class="description-text">MENUNGGU</span>
                        </div>
                    </div>
                    <div class="col-sm-6 border-right">
                        <div class="description-block" style="text-align: center;">
                            <h4 class="description-header"><?php echo $sedang['hasil'] ?></h4>
                            <h9>SEDANG DIKERJAKAN</h9>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="description-block" style="text-align: center;">
                            <h4 class="description-header"><?php echo $selesai['hasil'] ?></h4>
                            <span class="description-text">SELESAI</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-4">
        <div class="card">
            <div class="box-body">
                <div id="aaa"></div>

            </div>
        </div>
    </div>

    <div class="col-sm-4">
        <div class="card">
            <div class="box-body">
                <div id="bbb"></div>
            </div>
        </div>
    </div>

    <div class="col-sm-4">
        <div class="card">
            <div class="box-body">
                <div id="ccc"></div>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="card">
            <div class="box-body">
                <div id="ddd"></div>
            </div>
        </div>
    </div>
</div>

<script src="<?php echo base_url(); ?>assets/bower_components/highcharts/code/highcharts.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/highcharts/code/highcharts-3d.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/highcharts/code/modules/series-label.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/highcharts/code/modules/exporting.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/highcharts/code/modules/export-data.js"></script>

<script>
    $(document).ready(function() {
        $('#example').DataTable({
            "scrollY": 350,
            "scrollX": true,
            paging: false,
            fixedColumns: {
                rightColumns: 2
            },
            columnDefs: [{
                targets: -1,
                className: 'dt-body-right'
            }, ]
        });
    });
</script>
<script>
    $(function() {
        Highcharts.chart('aaa', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: '<h5>Statistik Berdasarkan Jenis Order</h5>'
            },
            subtitle: {
                text: '<?php echo date('Y'); ?>'
            },
            credits: {
                enabled: false
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },
            tooltip: {
                pointFormat: '<span ></span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
                percentageDecimals: 121
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    depth: 35,
                    dataLabels: {
                        enabled: true,
                        color: '#068f4a',
                        format: '<span style="color:#000000">{point.name}</span> <br> <b>Total : {point.y}</b> <br>Persentase : ({point.percentage:.0f}%)<br/>'
                    }
                }
            },
            series: [{
                type: 'pie',
                name: ' ',
                data: [{
                        name: 'Perumahan',
                        y: <?php echo $main['hasil']; ?>,
                        sliced: true,
                        selected: true
                    },
                    ['Kantor', <?php echo $multimedia['hasil']; ?>],

                ]
            }]
        });

        Highcharts.chart('bbb', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: '<h5>Statistik Berdasarkan Jenis Rumah</h5>'
            },

            subtitle: {
                text: '<?php echo date('Y'); ?>'
            },
            credits: {
                enabled: false
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },

            tooltip: {
                pointFormat: '<span ></span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
                percentageDecimals: 121
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    depth: 35,
                    dataLabels: {
                        enabled: true,
                        color: '#068f4a',
                        format: '<span style="color:#000000">{point.name}</span> <br> <b>Total : {point.y}</b> <br>Persentase : ({point.percentage:.0f}%)<br/>'
                    }
                }
            },

            series: [{
                type: 'pie',
                name: ' ',
                data: [

                    {
                        name: 'Rumah Staff',
                        y: <?php echo $rs['hasil']; ?>,
                        sliced: true,
                        selected: true
                    },
                    ['Rumah Non Staff', <?php echo $rns['hasil']; ?>],
                 

                ]
            }]
        });

        Highcharts.chart('ccc', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: '<h5>Statistik Berdasarkan Status</h5>'
            },

            subtitle: {
                text: '<?php echo date('Y'); ?>'
            },
            credits: {
                enabled: false
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },

            tooltip: {
                pointFormat: '<span ></span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
                percentageDecimals: 121
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    depth: 35,
                    dataLabels: {
                        enabled: true,
                        color: '#068f4a',
                        format: '<span style="color:#000000">{point.name}</span> <br> <b>Total : {point.y}</b> <br>Persentase : ({point.percentage:.0f}%)<br/>'
                    }
                }
            },

            series: [{
                type: 'pie',
                name: ' ',
                data: [

                    {
                        name: 'Menunggu pemeriksaan',
                        y: <?php echo $menunggu['hasil']; ?>,
                        sliced: true,
                        selected: true
                    },
                    ['Sedang dikerjakan', <?php echo $sedang['hasil']; ?>],
                    ['Selesai', <?php echo $selesai['hasil']; ?>],

                ]
            }]
        });

    })
    

    Highcharts.chart('ddd', {
        chart: {
            type: 'column',
            options3d: {
                enabled: true,
                alpha: 10,
                beta: 25,
                depth: 100
            }
        },
        title: {
            text: '<h5>Number of order by month</h5>'
        },
        subtitle: {
            text: '<?php echo date('Y'); ?>'
        },
        credits: {
            enabled: false
        },
        tooltip: {
            headerFormat: '<span style="font-size:11px">{point.name}</span><br>',
            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.0f}</b><br/>'
        },
        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true,
                    format: '{point.name} {point.y:.0f}'
                }
            }
        },
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun',
                'Jul', 'Ags', 'Sep', 'Okt', 'Nov', 'Des'
            ],
            labels: {
                skew3d: true,
                styzle: {
                    fontSize: '16px'
                }
            }
        },
        yAxis: {
            title: {
                text: null
            }
        },
        series: [{
            showInLegend: false,
            colorByPoint: true,
            data: <?php echo json_encode($grafik); ?>
        }]
    });

    //---------------------------------------------------------------------------------------------------------
</script>

<script type="text/javascript">
    function showTime() {
        var a_p = "";
        var today = new Date();
        var curr_hour = today.getHours();
        var curr_minute = today.getMinutes();
        var curr_second = today.getSeconds();
        if (curr_hour < 12) {
            a_p = "AM";
        } else {
            a_p = "PM";
        }
        if (curr_hour == 0) {
            curr_hour = 12;
        }
        if (curr_hour > 12) {
            curr_hour = curr_hour - 12;
        }
        curr_hour = checkTime(curr_hour);
        curr_minute = checkTime(curr_minute);
        curr_second = checkTime(curr_second);
        document.getElementById('clock').innerHTML = curr_hour + ":" + curr_minute + ":" + curr_second + " " + a_p;
    }

    function checkTime(i) {
        if (i < 10) {
            i = "0" + i;
        }
        return i;
    }
    setInterval(showTime, 500);
</script>