<?php
session_start();
include("config.php");	
$var="";
$price=70;

   

  //if (isset($_POST['submit'])) {
	 // $var_name = $_POST['name1'];
	  echo "Hello".$var;
  
	  //$username = $dom->getElementById('name');
	 // echo $username;
        //$username=echo "<script>document.getElementById("name");</script>"//$_POST['username'];
    $litres_query = "select litres from petrol_details p,users u 
	                  where p.user_id=u.user_id and  u.username = 'adarsh'";
    $result = $con->query($litres_query);
	
	$price_array = array();
    
     while($row = $result->fetch_assoc() ){
      $litres = $row['litres'];
	  
	  $price_array[$row['litres']]=$litres*$price;
	 
	
	 }
      
?>
<!DOCTYPE html>
<html>
<head>
  <!-- Plotly.js -->
  <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <link rel="stylesheet" href="b1.css">
</head>

<body>
  
<div class="pl"; id="pli">

<script>
var dat = [];
      var temp = [];
	  var date = <?php echo json_encode($price_array); ?>;
      
	  console.log(date);
	  litre = Object.keys(date);
	  price = Object.keys(date).map(function(key){
		  return date[key];
	  });
	  
	  count = Object.keys(date).length;
	  for(i = 0;i < count;i++){
		  temp.push(litre[i].split("-")[0]);
		  temp.push(price[i]);
		  dat.push(temp);
	  }
var trace1 = {
  x: litre,
  y: price,
  type: 'linechart',
  title:'cost from refill to refill'
};

var data = [trace1];
var layout = {
  title: 'Expenses from refill to refill',
  xaxis: {
    title: 'litres',
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },
  yaxis: {
    title: 'price',
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  }
};


Plotly.newPlot('pli', data,layout);

</script></div>

</body>
</html>
