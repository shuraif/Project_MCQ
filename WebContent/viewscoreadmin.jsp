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
<jsp:include page="adminhome.jsp"></jsp:include>
<br>


<jsp:useBean id="score"  class="exam.ViewScoreBeanAdmin"/>


 <div style="width:1000px; margin:0 auto;padding-top:5px;padding-bottom:50px">
<div class="card" style="width: 60rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Score Sheet</h5>

 <div class="card-body">



<table class="table table-striped" > 
<tr>

<th> schedule_id</th>
<th> user_id</th>
<th> mark</th>
</tr>


<%
score.getScore();


while(score.rs.next()) {
	out.println("<tr><td>"+score.rs.getString(2)+"</td><td>"+score.rs.getString(3)+"</td><td>"+score.rs.getString(4)+"</td></tr>");

}%>

</table>
</div>
</div>
</div>

</body>
</html>