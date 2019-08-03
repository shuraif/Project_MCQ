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
	<% if(request.getAttribute("search_result")!=null){
	//out.print(request.getAttribute("success"));
	String message = (String)request.getAttribute("search_result");
	%>
	<script type="text/javascript">
    var msg = "<%=message%>";
    alert("no schedule found");
</script>
	<%
	
	
	}%>

<jsp:include page="adminhome.jsp"></jsp:include>




<div style="width:1200px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Select Schedule to Modify</h5>

 <div class="card-body">



<center>
<form action="modifyschedule.jsp" method="post" class="form-inline">
<table align="center"><tr><td>
<input type="text" name="modifyid" class="form-control" placeholder="schedule id" required/></td><td>
<input type="submit" value="Search" class="btn btn-primary"/></td></tr>
</table>
</form>
<br><br>
<jsp:useBean id="scheduleModifyBean" class="admin_create_exam.ScheduleModifyBean">
</jsp:useBean>
<%
scheduleModifyBean.setRs();
ResultSet rs= scheduleModifyBean.getRs();

%>
<table class="table table-striped" >
<%
out.print("<tr><th>Schedule ID</th><th>date</th><th>Start time</th><th>End time</th><th>seat</th><th></th></tr>");
while(rs.next()){
	out.print("<form action='modifyschedule.jsp' method='post'><tr><td><input class='form-control' type='text' cols='50' readonly name='modifyid' value='"+rs.getString(1)+"'/></td><td>"+rs.getString(2)+"</td><td> "
	+rs.getString(3)+"</td><td> "+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td><input type='submit' value='update' class='btn btn-primary' /></form></td></tr>");
}



/* <form action='ScheduleDelete' method='post'><input type='hidden' value='"+rs.getString(1)+"' name='scheduleid'/><input type='submit' value='delete' class='btn btn-dark' /> </form>  */


%>

<% if(request.getAttribute("alertMsg")!=null){
	//out.print(request.getAttribute("success"));
	String message = (String)request.getAttribute("alertMsg");
	%>
	<script type="text/javascript">
    var msg = "<%=message%>";
    alert(msg);
</script>
	<%
	
	
	}%>
	
	



</table>
</center>


</div>
</div>
</div>

</body>
</html>