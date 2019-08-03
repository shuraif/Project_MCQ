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
<jsp:include page="adminhome.jsp"></jsp:include>
<jsp:useBean id="user" class="admin_verify_user.Verify_userBean">
</jsp:useBean>

 <div style="width:1200px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Approve User</h5>

 <div class="card-body">
 

<table  class='table table-striped'>
<tr >
<th>User_id</th>
<th>First_Name</th>
<th>Last_Name</th>
<th>Email</th>
<th>Mobile_Number</th>
<th>Approve</th>
<th>Reject</th>
</tr>



 <%
 user.verify();
   while(user.rs.next()){
	out.println("<tr><td>" +user.rs.getInt(1)+"</td>");
	out.println( "<td>"+user.rs.getString(2)+"</td>");
	out.println("<td>"+ user.rs.getString(3)+"</td>");
	out.println("<td>" +user.rs.getString(4)+"</td>");
	out.println("<td>" +user.rs.getString(5)+"</td>");
out.println("<td><a class='btn btn-primary' href=AccountActivattion?user_id="+user.rs.getString(1)+">Accept</a></td>");
out.println("<td><a class='btn btn-primary' href=AccountRejection?user_id="+user.rs.getString(1)+">Reject</a></td>");
 }
 %>
 

</table>
</div>
</div>
</div>
</body>
</html>