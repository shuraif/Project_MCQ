<%@page import="java.sql.ResultSet"%>
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
<jsp:include page="user_home_accepted.jsp"></jsp:include>




 
  <div style="width:1200px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Available Schedules</h5>

 <div class="card-body">
 





<form action= "View_schedule" method="post">


<table align="center" >




<tr><td></td><td><input type="date" name="date" class="form-control" ></td><td><input type="submit"  class="btn btn-primary" value="search"></td></tr></table><br><br>
<jsp:useBean id="getExams" class="exam_registration.GetExamScheduleBean">
</jsp:useBean>


<%
String date=(String)request.getAttribute("date");
ResultSet rs;
if(date==null){
	getExams.setRs();
    rs= getExams.getRs();
}
else{
	getExams.setRs1(date);
	 rs= getExams.getRs1();
}


%>
<table class="table table-striped" >
<%
out.print("<tr><th>Schedule ID</th><th>date</th><th>time</th><th>duration</th><th></th></tr>");
while(rs.next()){
	
	out.print("<tr><td><input class='form-control' type='text'  readonly name='examid' value='"+rs.getString(1)+"'/></td><td>"+rs.getString(2)+"</td><td> "
	+rs.getString(3)+"</td><td> "+rs.getString(4)+"</td><td><a href=ExamRegistration.jsp?examid="+rs.getString(1)+">Apply</a></td></tr>");
}

%>

</table>

</form>


</div>
</div>
</div>

</body>
</html>