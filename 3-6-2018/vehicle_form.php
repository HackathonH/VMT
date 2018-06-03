<?php
include("config.php");

if(isset($_POST['submit'])){ 
   $vehicleid = $_POST['vehicleId'];
   $vehicle_name = $_POST['vehicleName'];
   $vehicle_type = $_POST['vehicleType'];

  if($vehicleid !=''||$vehicle_name !='' || $vehicle_type !=''){
  //Insert Query of SQL
     $sql = "insert into vehicle(vehicle_id, vehicle_name, vehicle_type) values ($vehicleid, '$vehicle_name', '$vehicle_type')";

   }
   if ($con->query($sql) === TRUE) {
    echo "New record created successfully";
   } else {
    echo "Error: " . $sql . "<br>" . $con->error;
   }
   
}
$con->close();
?>