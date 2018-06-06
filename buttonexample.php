<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="col-md-4">
  <h2>refill to refill</h2>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Compare</button>
  <div id="demo" class="collapse">

  <?php
  include("plot.php");
  ?>
  </div>
</div>

<div class="col-md-4">
  <h2>compare with others</h2>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Compare</button>
  <div id="demo" class="collapse">

  <?php
  include("users_mileage.php");
  ?>
  </div>
</div>
<div class="col-md-4">
  <h2>compare with same models</h2>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Compare</button>
  <div id="demo" class="collapse">

  <?php
  include("same_bike_compare.php");
  ?>
  </div>
</div>
</body>
</html>
