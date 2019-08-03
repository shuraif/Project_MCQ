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
<jsp:useBean id="getExamPass" class="exam.GetExamPassBean">


</jsp:useBean>

<%

String userid=(String)session.getAttribute("username");

String result=getExamPass.getExamPass(userid);

%>


<jsp:include page="user_home_accepted.jsp"></jsp:include>


<div style="width:400px; margin:0 auto;padding-top:100px;">
<div class="card" style="width: 24rem;padding-bottom:20px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Exam Login</h5>

<form action="ExamLogin" method="post"  style="padding:20px;">
  <div class="form-group" >
    <label for="exampleInputEmail1">user id</label>
    <input type="text" class="form-control" name="exam_uname" aria-describedby="emailHelp" placeholder="Enter user id"
    required oninvalid="this.setCustomValidity('Enter user name')"
    oninput="this.setCustomValidity('')" >
    <small id="emailHelp" class="form-text text-muted"><!-- We'll never share your email with anyone else. --></small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="pass" placeholder="Password" 
    required oninvalid="this.setCustomValidity('Enter given password')"
    oninput="this.setCustomValidity('')" >
  </div>
<!--   <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div> -->
  <button type="submit" class="btn btn-primary">Login</button><% if(request.getAttribute("status")!=null){
	out.print(request.getAttribute("status"));
	}
/*   if(request.getAttribute("password")!=null){
		out.print(request.getAttribute("password"));
		} */
		
		
  
	
	%><%=result %>
</form>



</div>
</div>

</body>
</html>