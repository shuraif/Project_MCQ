<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href="assets/css/material-kit.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="adminhome.jsp"></jsp:include>



<div style="width:450px; margin:0 auto;padding-top:50px;">
<div class="card" style="width: 30rem;padding-bottom:30px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Add new Exam Schedule</h5>
<center>
 <div class="card-body">
<form action="AddSchedule" method="post" style="padding-top:10px">
<table>
<tr><td>Date</td><td><input type="date" id="datePickerId" name="exam_date" required class="form-control"
 oninvalid="this.setCustomValidity('Set Date Here')"
    oninput="this.setCustomValidity('')"
><br></td></tr>
<tr><td>Starting Time</td><td><input type="time" name="start_time" required class="form-control"
 oninvalid="this.setCustomValidity('Set Start Time Here')"
    oninput="this.setCustomValidity('')"
><br></td></tr>

<tr><td>Ending time</td><td><input type="time" name="end_time" required class="form-control"
 oninvalid="this.setCustomValidity('Set End Time Here')"
    oninput="this.setCustomValidity('')"
><br></td></tr>





<tr><td>No. Seats</td><td><input type="number" min="1" max="100" name="seats" required class="form-control"
 oninvalid="this.setCustomValidity('invalid selection')"
    oninput="this.setCustomValidity('')"
><br></td></tr>


<tr><td></td><td><input type="submit" value="Add Schedule" class="btn btn-primary"><% if(request.getAttribute("status")!=null){
	out.print(request.getAttribute("status"));
	}%><br></td></tr>


</table>


</form>



<script type="text/javascript">
datePickerId.min = new Date().toISOString().split("T")[0];
</script>


</div>
</center>
</div>
</div>
</body>
</html>