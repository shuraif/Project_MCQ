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
 <center><h3>CHANGE PASSWORD</h3></center>
        <form method="post" action="Forgetpassword">
            <table align="center">
                <tr>
                    <td>Enter your username: </td>
                    <td><input type="text" name="uname" class="form-control" required/></td>
                </tr>
                <tr>
                    <td>Enter New password :</td>
               <td>  <input id="password" name="newpwd" type="password" class="form-control" required pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.password_two.pattern = this.value;"  required>
</td>
                
                   <!--  <td><input type="password" name="newpwd"/></td> -->
                </tr>
                <tr>
                    <td>Enter Confirm Password:  </td>
                    <td><input id="password_two" name="confirmpwd" type="password" required  class="form-control" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');"  required>
                     </td>
                    <!-- <td><input type="password" name="confirmpwd" /></td>
                 --></tr>
                <tr>
                    <td align="center"><input type="submit" value="submit" />
                    <td align="center"><input type="reset" value="cancel" />
                    </td>
                </tr>
            </table>
        </form>
       <script type=\"text/javascript\">alert(\"password changed successfully.\");</script>
</body>
</html>