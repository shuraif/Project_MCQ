<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<meta charset="ISO-8859-1">
<title>Exam Details</title>
</head>
<body>
<jsp:include page="user_home_accepted.jsp"></jsp:include>
<jsp:useBean id="user" class="exam_registration.Exam_registration">
</jsp:useBean>

 
  <div style="width:1200px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Registration Details</h5>

 <div class="card-body">
 
 
 



<table  class="table table-striped">

 
 <%
 
 String username=(String)session.getAttribute("username");
 user.getName(username);

	 
	   out.println("<tr><td>"+"Name"+"</td><td>"+user.name+ "</td></tr>");
	
 
	   String examId=request.getParameter("examid");  
	   
	  session.setAttribute("examid",examId);
	   
	   
	  // out.println(examId);
	   request.setAttribute("examid", examId);
 user.examdetails();
   if(user.rs.next()){
	   
	
	out.println("<tr><td>"+"Exam_Date"+"</td><td>"+user.rs.getString(1)+ "</td></tr>");
	out.println("<tr><td>"+"Start_Time"+"</td><td>"+user.rs.getString(2)+ "</td></tr>");
	out.println("<tr><td>"+"End_Time"+"</td><td>"+user.rs.getString(3)+ "</td></tr></tr>");
	
	
	}
 %>
 </table>
 
 
 
 
    <div style="width:450px; margin:0 auto;padding-top:10px;padding-bottom:50px">
<div class="card" style="width: 30rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Are You Sure? You Want To Apply..!</h5>

 <div class="card-body">
 

 <table align="center">
 <tr>
<td colspan="2" align="center" ><form action='ExamDetails' method='post'>  <input type='submit' value='Apply' class="btn btn-primary"/></td></form>
			
<td><form action='apply_exam.jsp' method='post'><input type="hidden" name="examid" value="<%=examId %>" /><input type='submit' value='Cancel' class="btn btn-danger"/></td>


</tr></form>
	
</table>


</div>
</div>
</div>
 
 
 
 
 
</div>
</div>
</div>

















</body>
</html>