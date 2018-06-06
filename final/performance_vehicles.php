<?php
include("config.php");
$vehicle_name4="";

  //if (isset($_POST['submit'])) {
    $vehicle_mile = array();
    $vehicle_query = "select distinct vehicle_name from vehicle where vehicle_type = 'bike'";
    $result4 = $con->query($vehicle_query);
    if ($result4->num_rows > 0) {
      while($row4 = $result4->fetch_assoc()){
        $vehicle_name4 = $row4['vehicle_name'];
        $query4 = "select avg(mileage) as average from mileage_details where vehicle_name='$vehicle_name4'";
        $res4 = $con->query($query4) or die("Query Error");
        if ($res4->num_rows > 0) {
          $vehicle_mile[$vehicle_name4] = $res4->fetch_assoc()['average'];
        }
      }
    }
  //}
?>
<head>
  <!-- Plotly.js -->
  <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
</head>

<body>

  <div id="myDiv"><!-- Plotly chart will be drawn inside this DIV --></div>
<div class="hide" style="width:100px;height:100px">

</div>
<script>
var dat = [];
      var temp = [];
	  var date = <?php echo json_encode($vehicle_mile); ?>;

	  console.log(date);
	  year = Object.keys(date);
	  mileage = Object.keys(date).map(function(key){
		  return date[key];
	  });
	  console.log(year);
	  console.log(mileage);
    console.log("Heyy");
	  count = Object.keys(date).length;
	  for(i = 0;i < count;i++){
		  temp.push(year[i].split("-")[0]);
		  temp.push(mileage[i]);
		  dat.push(temp);
	  }
var trace1 = {
  x: year,
  y: mileage,
  type: 'scatter'
};

var data = [trace1];

Plotly.newPlot('myDiv', data);

</script>
</body>
