<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="user_home_accepted.jsp"></jsp:include>
inside view exam
<jsp:useBean id="viewexams" class="exam.ViewExamBean">
</jsp:useBean>
<%
/* HttpSession session=request.getSession(); */

String exam_avail=(String)request.getAttribute("exam_avail");

if(exam_avail.equals("yes")){
out.print("inside if yes ");
	String username=(String)session.getAttribute("username");
	out.print("<br>inside if yes user name="+username);
	viewexams.setRs();
	ResultSet rs=viewexams.getRs();
	
	if(viewexams.rs.next()) {
		System.out.println("rs not null inside view exam jsp");
		out.print("inside if in servlet");
	}
	else
	{
		out.print("<br>inside else");
	}
	
	
	/*while(rs.next()){
		out.print("inside fst while");
		
		viewexams.setExamDeatils(viewexams.getRs().getString(2));
		
		out.println("<table><tr><td>date</td><td>start time</td><td>duration</td></tr>");
		while(viewexams.getExamDeatils().next()){
			out.print("inside sec while");
			%>
			<tr><td><%= viewexams.getExamDeatils().getString(2) %>    </td><td><%= viewexams.getExamDeatils().getString(3) %> </td><td><%= viewexams.getExamDeatils().getString(4) %> </td></tr>
			
			
			
			
			
			<%
		}
		out.println("</table>");
		
		
	}*/
}






%>


</body>
</html>