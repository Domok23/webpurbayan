<!-- Info boxes -->
<div class="row">
  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box">
      <span class="info-box-icon btn-info elevation-1"><i class="far fa-newspaper"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Berita</span>
        <span class="info-box-number">
          <?php echo $this->dasbor_model->berita()->total; ?>
          <small>Post</small>
        </span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
    <!-- /.col -->

  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box mb-3">
      <span class="info-box-icon btn-primary elevation-1"><i class="fa fa-image"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Galeri</span>
        <span class="info-box-number"><?php echo $this->dasbor_model->galeri()->total; ?>
        <small>Foto</small>
      </span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->

  <div class="col-12 col-sm-6 col-md-3">
    <div class="info-box">
      <span class="info-box-icon btn-success elevation-1"><i class="fas fa-users"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Pengelola</span>
        <span class="info-box-number">
          <?php echo $this->dasbor_model->user()->total; ?>
          <small>Admin</small>
        </span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
    <!-- /.col -->
  

<div class="col-md-12">
<hr>
<h2>Statistik Kunjungan Terakhir</h2>
<hr>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
  }
</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

<!-- Chart code -->
<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv", am4charts.XYChart);
chart.paddingRight = 20;

// Add data
chart.data = [
<?php 
$kunjungan = $this->dasbor_model->kunjungan();
foreach($kunjungan as $kunjungan) {
?>
{
  "year": "<?php echo date('d-m-Y',strtotime($kunjungan->hari)) ?>",
  "value": <?php echo $kunjungan->total; ?>
}, 
<?php } ?>
];

// Create axes
var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.dataFields.category = "year";
categoryAxis.renderer.minGridDistance = 50;
categoryAxis.renderer.grid.template.location = 0.5;
categoryAxis.startLocation = 0.5;
categoryAxis.endLocation = 0.5;

// Pre zoom
chart.events.on("datavalidated", function () {
  categoryAxis.zoomToIndexes(Math.round(chart.data.length * 0.4), Math.round(chart.data.length * 0.55));
});

// Create value axis
var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.baseValue = 0;

// Create series
var series = chart.series.push(new am4charts.LineSeries());
series.dataFields.valueY = "value";
series.dataFields.categoryX = "year";
series.strokeWidth = 2;
series.tensionX = 0.77;

var range = valueAxis.createSeriesRange(series);
range.value = 0;
range.endValue = 1000;
range.contents.stroke = am4core.color("#FF0000");
range.contents.fill = range.contents.stroke;

// Add scrollbar
var scrollbarX = new am4charts.XYChartScrollbar();
scrollbarX.series.push(series);
chart.scrollbarX = scrollbarX;

chart.cursor = new am4charts.XYCursor();

}); // end am4core.ready()
</script>

<!-- HTML -->
<div id="chartdiv"></div>


  </div>
</div>
<!-- /.row -->

