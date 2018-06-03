<?php

  $username = "root";
  $password = "";
  $server = "localhost";
  $database = "vehicle";

  $con = new mysqli($server, $username, $password, $database);
  if($con->connect_error){
    die("Connection not established........");
  }

?>
