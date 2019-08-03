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



<div style="width:400px; margin:0 auto;padding-top:100px;">
<div class="card" style="width: 24rem;padding-bottom:20px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">SIGN UP</h5>



<form action= " Userregister" method="post"  style="padding-top:20px;">

<table align="center" >


<tr><td>First Name</td><td><input type="text" name="firstname" placeholder="firstname" class="form-control" pattern="[A-Za-z]+" required oninvalid="this.setCustomValidity('Enter first name')"
    oninput="this.setCustomValidity('')" /></td></tr>
<tr><td>Last Name</td><td><input type="text" name="lastname" placeholder="lastname" class="form-control" pattern="[A-Za-z]+" required oninvalid="this.setCustomValidity('Enter last name')"
    oninput="this.setCustomValidity('')" ></td></tr>
<tr><td>Email-id</td><td><input type="email" name="email" placeholder="Email-id" class="form-control" required oninvalid="this.setCustomValidity('Enter MailID')"
    oninput="this.setCustomValidity('')"  /></td></tr>
<tr><td>Mobile</td><td><input type="text" name="mobile" placeholder="mobile" class="form-control" pattern="[789][0-9]{9}" required oninvalid="this.setCustomValidity('Enter valid phone number')"
    oninput="this.setCustomValidity('')" ></td></tr>
<tr><td>User Name</td><td><input type="text" name="username" placeholder="username" class="form-control" required oninvalid="this.setCustomValidity('Enter user name')"
    oninput="this.setCustomValidity('')" /></td></tr>
<tr><td>Password</td><td><input type="password" name="password" placeholder="password" class="form-control" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.password_two.pattern = this.value;"  required></td></tr>

<tr><td>Confirm Password </td>
                    <td><input id="password_two" name="confirmpwd" type="password" placeholder="Confirm password" required  class="form-control" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');"  required>
                     </td></tr>



<tr><td><a href="user_login.jsp" class="btn btn-primary">Login</a></td><td><input type="submit" value="REGISTER"  class="btn btn-primary"></td></tr>
</table>

</form>



</div></div>
</body>
</html>