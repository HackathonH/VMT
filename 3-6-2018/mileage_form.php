<?php
include("config.php");

if(isset($_POST['submit'])){ 
   $vehicleid = $_POST['vehicleId'];
   $userid = $_POST['userId'];
   $mileage = $_POST['mileage'];
   

  if($vehicleid !=''||$userid !='' || $mileage !=''){
  //Insert Query of SQL
     $sql = "insert into mileage_details(vehicle_id, user_id, mileage) values ($vehicleid, $userid, $mileage)";

   }
   if ($con->query($sql) === TRUE) {
    echo "New record created successfully";
   } else {
    echo "Error: " . $sql . "<br>" . $con->error;
   }
   
}
$con->close();
?>