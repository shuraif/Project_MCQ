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

<jsp:include page="adminhome.jsp"></jsp:include><br><br>


<div style="width:1200px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Add new Question</h5>

 <div class="card-body">




<center>


<%
String question_number=request.getParameter("question_number");
//out.println(question_number);%>
<jsp:useBean id="modifyQuestion"  class="admin_questions.ModifyBean"/>
<table class='table table-striped'">
<% 
int check=modifyQuestion.retrieveById(question_number);

if(check==1)
{
while(modifyQuestion.rs.next()){
	/* out.println("<tr><td>questionid</td><td>"+modifyQuestion.rs.getString(1)+"</td></tr><tr><td>Question</td><td>"+modifyQuestion.rs.getString(2)+"</td></tr><tr><td>option a</td><td>"+modifyQuestion.rs.getString(3)+"</td></tr><tr><td>option b</td><td>"+modifyQuestion.rs.getString(4)+"</td></tr><tr><td>option c</td><td>"+modifyQuestion.rs.getString(5)+"</td></tr><tr><td>option d</td><td>"+modifyQuestion.rs.getString(6)+"</td></tr><tr><td>Answer</td><td>"+modifyQuestion.rs.getString(7)+"</td></tr><tr><td><a href='RemoveQuestionServlet?questionumber="+modifyQuestion.rs.getString(1)+"&option=delete'>delete</a></td></tr><tr><td><a href='RemoveQuestionServlet?questionumber="+modifyQuestion.rs.getString(1)+"&option=update'>update</a></td></tr>"); */
%>
<form action="RemoveQuestionServlet" method="post"> 
	<tr><td>questionid</td><td> <input type="text" name="questionid" readonly class="form-control" value="<%=modifyQuestion.rs.getString(1) %>" style="width:60%;"/></td></tr>
	
	<tr><td>Question</td><td><textarea  style="overflow:hidden" name="question" required class="form-control" value="<%=modifyQuestion.rs.getString(2) %>" style="width:60%;"
 oninvalid="this.setCustomValidity('Set Question Here')"
    oninput="this.setCustomValidity('')" ><%=modifyQuestion.rs.getString(2) %></textarea></td></tr>
	
	
	
	<%-- <tr><td>Question</td><td><input type="text" name="question" class="form-control" value="<%=modifyQuestion.rs.getString(2) %>" style="width:60%;"/></td></tr> --%>
	<tr><td>option a</td><td><input type="text" name="optiona" class="form-control" value="<%=modifyQuestion.rs.getString(3) %>" style="width:60%;"/></td></tr>
	<tr><td>option b</td><td><input type="text" name="optionb" class="form-control" value=" <%=modifyQuestion.rs.getString(4) %>" style="width:60%;"/></td></tr>
	<tr><td>option c</td><td><input type="text" name="optionc" class="form-control" value="<%=modifyQuestion.rs.getString(5) %>" style="width:60%;"/></td></tr>
	<tr><td>option d</td><td><input type="text" name="optiond" class="form-control" value=" <%=modifyQuestion.rs.getString(6) %>" style="width:60%;"/></td></tr>
	<tr><td>Answer</td><td><input type="text" name="answer" class="form-control" value="<%=modifyQuestion.rs.getString(7) %>" style="width:60%;"/></td></tr>
	<tr><td><a class="btn btn-danger" href='RemoveQuestionServlet?questionumber=<%=modifyQuestion.rs.getString(1) %>'>delete</a></td><td><input type="submit" value="update" class="btn btn-success"></td></tr>
	</form>
<% 
}
}
else
{
	request.setAttribute("not_found","No Question Found");
	  response.sendRedirect("removequestions.jsp");
}
%>



</form>
</table>

</center>

</div>
</div>
</div>

</body>
</html>