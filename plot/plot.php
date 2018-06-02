<?php
include("config.php");
  //if (isset($_POST['submit'])) {
    $username="adarsh";//$_POST['username'];
    $user_id_query = "select user_id from users where username='$username'";
    $result = $con->query($user_id_query);
    if ($result->num_rows > 0) {
      $row = $result->fetch_assoc();
      $user_id = $row['user_id'];
      $query = "select mileage,date from mileage_details where user_id = $user_id order by date";
      $res = $con->query($query);
      $date_mile = array();
      while ($row = $res->fetch_assoc()) {
        $date_mile[$row['date']] = $row['mileage'];
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

<script>
var dat = [];
      var temp = [];
	  var date = <?php echo json_encode($date_mile); ?>;
      
	  console.log(date);
	  year = Object.keys(date);
	  mileage = Object.keys(date).map(function(key){
		  return date[key];
	  });
	  console.log(year);
	  console.log(mileage);
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
