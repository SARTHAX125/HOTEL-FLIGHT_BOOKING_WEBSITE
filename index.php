<?php
session_start();
require_once 'connection.php';
?>
<?php
include 'navbar.php';
?>
<!DOCTYPE html>
<html lang="en">
<style>

</style>

<style>
 
  </style>



<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
   
    
    <div >
      <br><br><br><br>
      <div class="div1">Welcome to BookMyTrip!!</div><br>
      
  <h1 style ="text-align: center;">Plan your vacation!</h1>
  <h2 style ="text-align: center;">Book flights and hotels at your fingertips!</h2>
 <?php
 if(isset($_SESSION["username"]))
 {
    echo( "<button class ='button1' onclick= \"location.href='flightinput.php'\"><div></div></button>\n");
    echo( "<button class ='button2' onclick= \"location.href='hotelinput.php'\"><div></div></button>");
 }
 else
 {
    echo( "<button class ='button1' onclick= \"location.href='login.php'\"><div></div></button>\n");
    echo( "<button class ='button2' onclick= \"location.href='login.php'\"><div></div></button>");
 }
  
  ?>




</body>
</html>