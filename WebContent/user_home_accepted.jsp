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


<!-- <a href='userregister.jsp'>Registration</a><br> -->
<%


if(request.getAttribute("exam_login_status")!=null){
	String message = (String)request.getAttribute("exam_login_status");
	request.setAttribute("exam_login_status",null);
	
	
	%>
	

	
	
	<script type="text/javascript">
    var msg = "<%=message%>";
    alert(msg);
</script>
	<%
	
	
		}




%>



 <div style="width:1350px; margin:0 auto;padding-top:5px;padding-bottom:50px">
<div class="card" style="padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" >
<center>
<a href='UserController?action=apply' class="btn btn-primary" >Apply Exam</a>
<a href='ExamValidate' class="btn btn-primary" >start exam</a>
<a href='UserController?action=view' class="btn btn-primary" >View score</a>
<a href='UserController?action=logout' class="btn btn-primary" >logout</a>
</center>
</h5>

</div>
</div>
</body>
</html>