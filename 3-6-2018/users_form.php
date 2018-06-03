<?php
include("config.php");

if(isset($_POST['submit'])){ 
   $userid = $_POST['userid'];
   $user = $_POST['user'];

  if($userid !=''||$user !=''){
  //Insert Query of SQL
     $sql = "insert into users(user_id, username) values ($userid, '$user')";

   }
   if ($con->query($sql) === TRUE) {
    echo "New record created successfully";
   } else {
    echo "Error: " . $sql . "<br>" . $con->error;
   }
   
}
$con->close();
?>