<?php

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
     
  $High_School_Name=$_POST['highschoolname'];
  $Year_Of_Passing= $_POST['yearofpassing10'];
  $Higher_Secondary_School_Name= $_POST['highersecandryschoolname'];
  $Year_Of_Passing= $_POST['yearofpassing12'];
  $Enrollment_Number=$_POST['enrollmentnumber'];
  $Roll_Number=$_POST['rollno'];
  $Current_Course=$_POST['course'];
  $Current_Sem=$_POST['sem'];
  $Current_section=$_POST['section'];
  $Enrollment_Year=$_POST['enrollmentnumber'];
  $Alternate_Email= $_POST['altemail'];
  
  
  $sql="INSERT INTO `student_info`(`High_School_Name`, `Year_Of_Passing`, `Higher_Secondary_School_Name`, `Year_Of_Passing1`, `Enrollment_Number`, `Roll_Number`, `Current_Course`, `Current_Sem`, `Current_section`, `Enrollment_Year`, `Alternate_Email`) VALUES ('$High_School_Name','$Year_Of_Passing','$Higher_Secondary_School_Name','$Year_Of_Passing','$Enrollment_Number','$Roll_Number','$Current_Course','$Current_Sem','$Current_section','$Enrollment_Year','$Alternate_Email' )";
   
 mysqli_query($con,$sql);
  
?>