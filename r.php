<?php
session_start();

$server = "";
$username = "root";
$password="";
$database="sim database";

$con=mysqli_connect($server,$username,$password,$database);
// Check connection
if (mysqli_connect_errno())
  {

  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }  
  $First_Name=$_POST['firstname'];
  $Mid_name=$_POST['midname'];
  $Last_Name=$_POST['lastname'];
  $Father_Name=$_POST['fathername'];
  $Mother_Name=$_POST['mothername'];
  $Bmonth=$_POST['month'];
  $Bdate=$_POST['date'];
  $Byear=$_POST['year'];
  $Gender=$_POST['gender'];
  $Category=$_POST['category'];
  $Mobile_Number=$_POST['studentnumber'];
  $Telephone_Number=$_POST['guardiannumber'];
  $Email=$_POST['email'];
  $Current_Address=$_POST['currentaddress'];
  $Permanent_Address=$_POST['permanentaddress'];
 
  $sql="INSERT INTO User_Master VALUES('$First_Name', '$Mid_name', '$Last_Name', '$Father_Name', '$Mother_Name','$Bmonth', '$Bdate', '$Byear', '$Gender','$Category', '$Mobile_Number', '$Telephone_Number', '$Email', '$Current_Address', '$Permanent_Address','student',0) ";
  
   mysqli_query($con,$sql);
  header("Location:Registration2.php");
  
?>