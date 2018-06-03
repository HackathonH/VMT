<?php
include("config.php");
  //if (isset($_POST['submit'])) {
    $date_mile = array();
    $user_id_query = "select user_id from users";
    $result = $con->query($user_id_query);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
        $user_id = $row['user_id'];
        $data_mile[$user_id] = array();
        $query = "select mileage,date from mileage_details where user_id = $user_id order by date";
        $res = $con->query($query) or die("Mileage Error");
        while ($row = $res->fetch_assoc()) {
          $date_mile[$user_id][$row['date']] = $row['mileage'];
        }
      }
    }
  //}
?>
<head>
  <!-- Plotly.js -->
  <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <link rel="stylesheet" href="b1.css">
</head>

<body>

<div class="um"; id="umid">

<script>
var users = <?php echo json_encode($date_mile); ?>;
var ids = Object.keys(users);
var data = [];
var date = Object.keys(users).map(function(key){
  return users[key];
});
for (var i = 0; i < Object.keys(date).length; i++) {
  opacity = 0.35;
  name="other vehicles";
  width=1.8;
if (ids[i] == "501") {
  opacity = 1;
  name="You";
  width=3.5;
}
    year = Object.keys(date[i]);
	  mileage = Object.keys(date[i]).map(function(key){
		  return date[i][key];
	  });
	   // console.log(year);
	  // console.log(mileage);

var trace = {
  x: year,
  y: mileage,
  type: 'scatter',
  opacity:opacity,
  name:name,
  line:{
    width:width,
    shape:"spline",
    smooth:1.3
  },
  fill:"none",
  gradient:"radial"
};
data.push(trace);
}

Plotly.newPlot('umid', data);

</script></div>
</body>
