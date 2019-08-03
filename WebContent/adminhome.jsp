<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <link rel="stylesheet" href="css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


 <div style="width:1350px; margin:0 auto;padding-top:5px;padding-bottom:5px">
<div class="card" style="padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" >


<table align="center">
<tr><td> <div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Questions
    </button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
       <a href='AdminController?action=addquestions' class="btn btn-primary"   >Add Questions&emsp;&nbsp;</a><br>
      <a href='AdminController?action=removequestions' class="btn btn-primary" >Modify Questions</a>
    </div>
  </div></td>
<td><div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Schedule
    </button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a href='AdminController?action=addschedule' class="btn btn-primary" >Add Schedule&nbsp&nbsp&nbsp&nbsp</a>
     <a href='AdminController?action=modifyschedule' class="btn btn-primary" >Modify Schedule</a>
    </div></td>
 
    <td><div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     User
    </button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a href='AdminController?action=verifyuser' class="btn btn-primary" >Approve User</a>
     <a href='AdminController?action=accepted' class="btn btn-primary" >Active Users</a>
      <a href='AdminController?action=rejected' class="btn btn-primary" >Rejected Users</a>
    </div></td>
    
    
    
    
<!-- <td><a href='AdminController?action=verifyuser' class="btn btn-primary" >Verify User</a></td> -->
<td><a href='AdminController?action=viewscore' class="btn btn-primary" >View Score</a></td>
<td><a href='AdminController?action=logout' class="btn btn-primary" >LogOut</a></td></tr>
</table>

		


</h5>
</div>
</div>








<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>	
</html>