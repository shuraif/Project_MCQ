<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<jsp:include page="adminhome.jsp"></jsp:include>
<jsp:useBean id="user" class="admin_verify_user.Accepted_User_List">
</jsp:useBean>




<div style="width:1200px; margin:0 auto;padding-top:40px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:30px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Active Users</h5>

 <div class="card-body">

<table class="table table-striped">
<tr bgcolor="#949494">
<th>User_id</th>
<th>First_Name</th>
<th>Last_Name</th>
<th>Email</th>
<th>Mobile_Number</th>

</tr>



 <%
 user.readitem();
   while(user.rs.next()){
	out.println("<tr><td>" +user.rs.getInt(1)+"</td>");
	out.println( "<td>"+user.rs.getString(2)+"</td>");
	out.println("<td>"+ user.rs.getString(3)+"</td>");
	out.println("<td>" +user.rs.getString(4)+"</td>");
	out.println("<td>" +user.rs.getString(5)+"</td>");
	
 }
 %>
 

</table>

</div>
</div>
</div>


</body>
</html>