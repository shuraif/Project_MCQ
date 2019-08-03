<%@page import="java.sql.ResultSet"%>
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

<div style="width:1200px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 75rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Modify Schedule</h5>

 <div class="card-body">


<jsp:useBean id="showspecificshcedule" class="admin_create_exam.ShowSpecificScheduleBean">
</jsp:useBean>
<% String scheduleid=request.getParameter("modifyid");
showspecificshcedule.setScheduleid(scheduleid);
showspecificshcedule.setRs();
 ResultSet rs=showspecificshcedule.getRs();
 if(rs.next()){
%>


<form action="ScheduleModify" method="post">
<table  class='table table-striped'><tr><input type="hidden" name="scheduleid" value="<%=scheduleid%>"/>      </tr>

<tr><td width="30">Date</td><td width="40"><input type="date" name="exam_date" id="datePickerId" class="form-control" value="<%=rs.getString(2) %>" required
 oninvalid="this.setCustomValidity('Set Date Here')"
    oninput="this.setCustomValidity('')"/></td></tr>
<tr><td>Start Time</td><td><input type="time" name="start_time" class="form-control" value="<%=rs.getString(3) %>" required
 oninvalid="this.setCustomValidity('Set Time Here')"
    oninput="this.setCustomValidity('')"/></td></tr>


<tr><td>End Time</td><td><input type="time" name="end_time" class="form-control" value="<%=rs.getString(4) %>" required
 oninvalid="this.setCustomValidity('Set Time Here')"
    oninput="this.setCustomValidity('')"/></td></tr>








<tr><td>No Seats</td><td><input type="number" min="1" max="100" name="seats" class="form-control" value="<%=rs.getString(5) %>" required
 oninvalid="this.setCustomValidity('invalid selection')"
    oninput="this.setCustomValidity('')"
></td></tr>


<tr><td><input type="submit" value="update Schedule" class="btn btn-primary"></form>
 <form action='ScheduleDelete' method='post'><input type='hidden' value='<%=scheduleid%>' name='scheduleid' /></td><td>
 <input type='submit' value='delete'  class="btn btn-danger" /></td></tr> </form>

<% 

 }
 else
 {
	 request.setAttribute("search_result","no schedule Found");
	 String redirectURL = "modifyscheduleselect.jsp";
     response.sendRedirect(redirectURL);
 }



if(request.getAttribute("success")!=null){
	out.print(request.getAttribute("success"));
	}%></td></tr>



</table>









</form>
</div>
</div>
</div>
<script type="text/javascript">
datePickerId.min = new Date().toISOString().split("T")[0];
</script>
</body>
</html>