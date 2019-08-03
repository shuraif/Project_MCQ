<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images/bg.jpeg">
<div style="width:1px; margin:0 auto;padding-top:200px;">
<div class="card" style="width: 24rem;padding-bottom:20px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Admin Login</h5>


<form action="AdminLogin" method="post">

<br>
<table align="center" >

<tr><td>User Name</td></tr><tr><td><input type="text" name="admin_user_name" placeholder="user name" required class="form-control"
 oninvalid="this.setCustomValidity('Enter User Name Here')"
    oninput="this.setCustomValidity('')" /><br></td></tr>
<tr><td>Password</td></tr><tr><td><input type="password" name="admin_password" placeholder="password" required class="form-control"
 oninvalid="this.setCustomValidity('Enter Password Here')"
    oninput="this.setCustomValidity('')"><br></td></tr>

<tr><td><input type="submit" value="Login" class="btn btn-primary"><% if(request.getAttribute("status")!=null){
	out.print(request.getAttribute("status"));
	}%></td></tr>
</table>

</form>
</div>
</div>
</body>
</html>