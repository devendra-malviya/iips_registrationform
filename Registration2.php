<?php session_start(); 
?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>


<script>
//Function for allowing only numbers in postal code and phone numbers... 
//Here 8 is for backspace key, 37 for left arrow key and 39 for right arrow key and 9 is for Tab.
//Here is a problem that ascii key conflicts occur at 37 and 39 % and ' also work.
function onlyNumbers(event)				
{
    	var e =event; 
   	var charCode = e.which || e.keyCode;

    		if ((charCode >= 48 && charCode <= 57) || charCode == 8 || charCode == 37 || charCode == 39 || charCode == 9) 
       			 return true;
			else
				 return false;

}
function onlyChars(event)
{
	var e =event;
	var charCode = e.which || e.keyCode;
	if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || charCode == 8 || charCode == 9)
		return true;
	else 
		return false;
}

function digitsonly(e)
{
	var data=document.getElementById('cnumber').value;
	if(data.Length!=10)
       {
       alert("Please enter 10 digits");
       return false;
       }
    else
    	return true;   
}
</script>




</head>
<body>  
   
   <div>  <!-- 1st panel-->
		<div <h3 class="panel-title" <br><center><img src="2.png"></center></h3></div>
   
   
		<!--<div class="panel-body"> Panel content -->
			<div class="panel panel-default">
  
				<body style="background-color:white;">
					<div class="container">
						<div class="row">
							<div class="col-md-2"></div>
							<div class="col-xs-8"style="">
								<div class="col-md-2"></div>
					
					
									<!-- starting inside panel -->
								
									<div class="panel panel-primary">
										<div class="panel-heading"><center><h4>Previous Academic Qualification </center></h4></div>
										<div class="panel-body">
										
											<form role="form" name="myForm" method="post" action="r2.php">
												<div class="form-group">
													<table border="0" class="table">
														<tr>
															<td style="width:200px"><label>High school Name</label></td>
															<td>
																<input required="required"  type="text" class="form-control" placeholder="Name of School" onkeypress="return onlyChars(event)" name="highschoolname">
															</td>
														</tr>			
														<tr>
															<td><label>Year of passing</label></td>
															<td><div class="row">
																	<div class="col-xs-4">
																		<input required="required"  type="text" class="form-control" placeholder="2010" onkeypress="return onlyNumbers(event)"  maxlength="4" name="yearofpassing10">
																	</div>
																</div>
															</td>
														</tr> 		
														<tr>
															<td><label>Higher Secondary school Name</label></td>
															<td><input required="required"  type="text" class="form-control" placeholder="Name of School" onkeypress="return onlyChars(event)" name="highersecandryschoolname"></td>
														</tr>  							
														<tr>
															<td><label>Year of passing</label></td>
															<td><div class="row">
																	<div class="col-xs-4">
																		<input required="required"  type="text" class="form-control" placeholder="2010" onkeypress="return onlyNumbers(event)"  maxlength="4" name="yearofpassing12">
																	</div>
																</div>
															</td>
														</tr> 
													</table>
										 
										
														
													<center><h2>Academic Information</h2></center>
												

													<table border="0" class="table">
														
														<tr>
															<td  style="width:200px"><label>Enrollment Number</label></td>
															<td>
																<div class="row">
																<div class="col-md-4"><input required="required"  type="text" class="form-control" placeholder="DE/11/****" name="enrollmentnumber"></div>
																</div>
															</td>
														</tr>
														
														
														
														
														<tr>
															<td><label>Roll Number</label></td>
															<td><div class="row">
																	<div class="col-md-4"><input required="required"  type="text" class="form-control" placeholder="IT-2K11-10" name="rollno"></div>
																</div>
															</td>
														</tr>
											
														
											
														<tr><td><label>Course,Sem and Section</label></td>
															<td><div class="row">
																	<div class="col-xs-4">
																		<select onchange ="generate(this.value)" class="form-control" name="course">
																		<option >Select Course</option>
																		<option >M.Tech</option>
																		<option >MCA</option>
																		<option>B.Com</option>
																		</select>
																	</div>	

																	<div id="selectsem" class="col-xs-4"></div>
												
																	<div  id="section" style ='visibility:hidden' class="col-xs-2">
																			<select class="form-control" name="section">
																					<option>A</option>
																					<option>B</option>
																			</select> 
																	</div>  
																		<label style="color:black;">
																		<br>
																</div>
															</td>
														</tr> 
											 
														<tr><td><label>Enrollment year</label></td>
															<td><div class="row">
																	<div class="col-md-4"><input required="required"  type="text" class="form-control" placeholder="2012" onkeypress="return onlyNumbers(event)"  maxlength="4" name="enrollmentnumber"></div>
																</div>
															</td>
														</tr>
											
														<tr><td><label>Alternate Email</label></td>
															<td><input required="required"  type="email" class="form-control" id="inputEmail3" placeholder="Email" name="altemail">
															</td>
														</tr>
													</table>
											
												</div>
											
												
													<!--<a class="btn btn-success" href="Registration.html" role="button">Previous</a> -->
													<center>	<input required="required"  class="btn btn-primary" type="submit" value="Submit">
																<input required="required"  class="btn btn-danger" type="reset" value="Reset">				
													</center>


											  		
											</form>	
							
									    </div> 
									</div>
							</div>	
						</div>
					</div>
				</body>
														<script> <!--The below script is for selection of course -->
														function generate(x)
														{
															
															var i;
																					
															msg = '';
															
															msg ='<select class="form-control" name="sem">';
																											
																																											
															count = 0;
															if (x=='M.Tech')
																count  = 11;
															else if(x =='MCA')
																count = 12;
															else 
																count = 6 ;
															//document.write('');
															for(i=1;i<=count;i++)
															{
																msg += "<option>"+i+" SEM </option>";
															}
															
														
															
															msg += '</select>' ;
															
														//	$('#selectsem').html(msg);
															document.getElementById('selectsem').innerHTML = msg;
															
															if(x =='MCA')
																$('#section').css('visibility','visible');
															else
																$('#section').css('visibility','hidden');
																													
													}
														</script>  <!--closing of script-->
			</div>											
	</div>
</body>	
<div class="panel-footer"><br>Panel footer<br></div>

</html>
