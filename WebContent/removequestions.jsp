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
<% if(request.getAttribute("not_found")!=null){
	//out.print(request.getAttribute("success"));
	String message = (String)request.getAttribute("not_found");
	%>
	<script type="text/javascript">
    var msg = "<%=message%>";
    alert("no question found");
</script>
	<%
	
	
	}%>

<jsp:include page="adminhome.jsp"></jsp:include>


<div style="width:1200px; margin:0 auto;padding-top:40px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:30px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Select Question To Modify</h5>

 <div class="card-body">



<form action="modifyquestions.jsp" method="post">
<table align="center">
<tr><td>
<input type="text" name="question_number"  placeholder="Question Number" class="form-control"  required 
oninvalid="this.setCustomValidity('Enter question number')"
    oninput="this.setCustomValidity('')" ></td><td>
    <input type="submit" value=modify class="btn btn-primary"></td></tr>
</table>
</form>
<jsp:useBean id="questions"  class="admin_questions.ModifyBean"/><br>

<% 
questions.retrieveEasy();
if(questions.rs!=null){
out.println("<table class='table table-striped'><tr><td>Question_number</td><td>Question</td><td></td></tr>");

}
while(questions.rs.next()) {
			out.println("<tr><td>"+questions.rs.getString(1)+"</td><td>"+questions.rs.getString(2)+"</td><td align='right'><a class='btn btn-primary' href='modifyquestions.jsp?question_number="+questions.rs.getString(1)+"'>Modify</a></td></tr>");
		
}

questions.retrieveMed();
while(questions.rs.next()) {
			out.println("<tr><td>"+questions.rs.getString(1)+"</td><td>"+questions.rs.getString(2)+"</td><td align='right'><a class='btn btn-primary' href='modifyquestions.jsp?question_number="+questions.rs.getString(1)+"'>Modify</a></td></tr>");
		
}

questions.retrieveHard();
while(questions.rs.next()) {
			out.println("<tr><td>"+questions.rs.getString(1)+"</td><td>"+questions.rs.getString(2)+"</td><td align='right'><a class='btn btn-primary' href='modifyquestions.jsp?question_number="+questions.rs.getString(1)+"'>Modify</a></td></tr>");
	
}



%>
</table>

<br>
	


</div>
</div>
</div>

</body>
</html>