<?php
session_start();
include("config.php");
$vid="";
$uid="";
$vname1="";
$odo=$_POST['odometer'];
$odo2="";
$price=$_POST['price'];
if(isset($_SESSION['vehid']))
    {
         $vid = $_SESSION['vehid'];
    }
    if(isset($_SESSION['uid']))
        {
             $uid = $_SESSION['uid'];
        }
        if(isset($_SESSION['veh_name']))
            {
                 $vname1 = $_SESSION['veh_name'];
            }

$pp=80;
$op="";
$dat="";
$query="INSERT INTO `odometer_details`(`vehicle_id`, `odometer`, `price`) VALUES ($vid,$odo,$price)";
$res=$con->query($query);
$query1="SELECT `odometer`, `price`, date as a FROM `odometer_details` WHERE vehicle_id=$vid order by date desc limit 2";
$res1=$con->query($query1);
$i=0;
if ($res1->num_rows > 0) {
while($row = $res1->fetch_assoc()){
if ($i==0) {
  $op=$row['price'];

}else{
  $odo2=$row['odometer'];
  $dat = $row['a'];
}

$i++;
}
echo $dat;
}
$mileage=($odo2/$pp);
$query2="INSERT INTO `mileage1`(`vehicle_id`, `mileage`, `user_id`, date, `vehicle_name`) VALUES ($vid,$mileage,'$uid','$dat','$vname1')";
$res2=$con->query($query2);
if($res2==true)
{
header("Location:try1.php");
}
?>
