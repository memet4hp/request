<style>
    .bg-biru {
      background-color: #106391;
      color: white;
    }

    .namabox {
      font-size: 2px;
    }
  </style>

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

  <!-- Small boxes (Stat box) -->
  <div class="row " style="margin-left:10px ;">

    <div class="col-lg-12 col-12">
      <b>Update 01/01/<?php echo date('Y') ?> - <?php echo date('d/m/Y') ?> <p></p></b>
    </div>

    

    <div class="col-lg-2 col-6">
      <!-- small box -->
      <div class="small-box bg-biru">
        <div class="inner">
          <h3><?php echo $total['hasil'] ?></h3>
           <small>TOTAL</small>
           <br>
          <small>( ORDER) 
          </small>
        </div>
      </div>
    </div>

    <div class="col-lg-2 col-6">
      <!-- small box -->
      <div class="small-box bg-biru">
        <div class="inner">
          <h3><?php echo $urgent['hasil'] ?></h3>
          <small>URGENT
          </small>
          <br>
          <small>(PRIORITAS) 
          </small>
        </div>
      </div>
    </div>

    <div class="col-lg-2 col-6">
      <!-- small box -->
      <div class="small-box bg-biru">
        <div class="inner">
          <h3><?php echo $standart['hasil'] ?></h3>
          <small>NORMAL
          </small>
          <br>
          <small>(PRIORITAS) 
          </small>
        </div>
      </div>
    </div>

    

    <div class="col-lg-2 col-6">
      <!-- small box -->
      <div class="small-box bg-biru">
        <div class="inner">
          <h3><?php echo $standart['hasil'] ?></h3>
          <small>PENGERJAAN
          </small>
          <br>
          <small>(STATUS) 
          </small>
        </div>
      </div>
    </div>

    <div class="col-lg-2 col-6">
      <!-- small box -->
      <div class="small-box bg-biru">
        <div class="inner">
          <h3><?php echo $standart['hasil'] ?></h3>
          <small>MENUNGGU MATERIAL
          </small>
          <br>
          <small>(STATUS) 
          </small>
        </div>
      </div>
    </div>

    <div class="col-lg-2 col-6">
      <!-- small box -->
      <div class="small-box bg-biru">
        <div class="inner">
          <h3><?php echo $standart['hasil'] ?></h3>
          <small>MENUNGGU TENDER
          </small>
          <br>
          <small>(STATUS) 
          </small>
        </div>
      </div>
    </div>
    

  </div>
  <!-- /.row -->

  <script src="<?php echo base_url(); ?>assets/highcharts/code/highcharts.js"></script>
  <script src="<?php echo base_url(); ?>assets/highcharts/code/highcharts-3d.js"></script>
  <script src="<?php echo base_url(); ?>assets/highcharts/code/modules/series-label.js"></script>
  <script src="<?php echo base_url(); ?>assets/highcharts/code/modules/exporting.js"></script>
  <script src="<?php echo base_url(); ?>assets/highcharts/code/modules/export-data.js"></script>

  <script>
    $(document).ready(function() {
      $('#example').DataTable({
        "scrollY": 550,
        "scrollX": true,
        paging: false,
        // "table-layout":fixed,
      });
    });
  </script>

  <script>
    Highcharts.chart('aaa', {
      chart: {
        type: 'column'
      },
      credits: {
        enabled: false
      },
      title: {
        text: 'Jumlah Permintaan berdasarkan kategori data'
      },

      xAxis: {
        categories: [
          'Crop Protection',
          'Nutrition Deficiency',
          'Trial Request',
          'Others',
        ],
        crosshair: true
      },
      yAxis: {
        min: 0,
        title: {
          text: 'Number of Request'
        }
      },
      tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}  </td>' +
          '<td style="padding:0"><b>{point.y} request</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
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
      series: [{
        color: '#0093AD',
        name: '',
        showInLegend: false,
        data: [<?php echo $proteksi['hasil'] ?>, <?php echo $Nutrition['hasil'] ?>, <?php echo $trial['hasil'] ?>, <?php echo $others['hasil'] ?>]

      }, ]
    });


    Highcharts.chart('bbb', {
      chart: {
        type: 'column'
      },
      credits: {
        enabled: false
      },
      title: {
        text: 'Outstanding Permintaan berdasarkan kategori data'
      },

      xAxis: {
        categories: [
          'Crop Protection',
          'Nutrition Deficiency',
          'Trial Request',
          'Others',
        ],
        crosshair: true
      },
      yAxis: {
        min: 0,
        title: {
          text: 'Number of Request'
        }
      },
      tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}  </td>' +
          '<td style="padding:0"><b>{point.y} request</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
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
      series: [{
        color: '#0093AD',
        name: '',
        showInLegend: false,
        data: [<?php echo $proteksi['hasil'] ?>, <?php echo $Nutrition['hasil'] ?>, <?php echo $trial['hasil'] ?>, <?php echo $others['hasil'] ?>]

      }, ]
    });
  </script>