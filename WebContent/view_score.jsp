<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="user_home_accepted.jsp"></jsp:include>
<jsp:useBean id="user" class="exam_registration.viewScoreUser">
</jsp:useBean>


 <div style="width:1000px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 60rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Score Sheet</h5>

 <div class="card-body">


<table class="table table-striped">
<tr >

<th>Schedule_Id</th>

<th>Mark</th>

</tr>




 <%
String username=(String)session.getAttribute("username");

 user.fetchScore(username);
   if(user.rs.next()){
	out.println( "<tr><th>"+user.rs.getString(2)+"</th>");
	out.println("<th>"+ user.rs.getInt(4)+"</th>");
/* 	out.println("<th>" +user.rs.getString(3)+"</th>");
	out.println("<th>" +user.rs.getString(4)+"</th>");
	out.println("<th>" +user.rs.getInt(5)+"</th></tr>"); */

 }
 %>
 
</table>
</div>
</div>
</div> 
</body>
</html>