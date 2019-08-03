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



<div style="width:1px; margin:0 auto;padding-top:230px;">
<div class="card" style="width: 34rem;padding-bottom:20px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#598BD8;">Login</h5>


<form action="UserLogin" method="post"  style="padding-top:20px;">


<table align="center" >

<tr><td>User Name</td><td><input type="text" name="username" placeholder="user name" class="form-control"    required oninvalid="this.setCustomValidity('Enter user name')"
    oninput="this.setCustomValidity('')" /></td></tr>
<tr><td>Password</td><td><input type="password" name="password" placeholder="password" class="form-control"  required  oninvalid="this.setCustomValidity('Enter password')"
    oninput="this.setCustomValidity('')" /></td></tr>

<tr><td></td><td><input type="submit" value="Login" class="btn btn-primary"><% if(request.getAttribute("status")!=null){
	out.print(request.getAttribute("status"));
	}%></td></tr>
<tr><td><a href="forgotpassword.jsp">forgot password</a></td><td align="center"> <a href="userregister.jsp" >SignUp</a></td></tr>




</table>
</form>


</div></div>
</body>
</html>