<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/ab.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script language ="javascript" >
        var tim;
       
        var min = 20;
        var sec = 60;
        var f = new Date();
        function f1() {
            f2();
            document.getElementById("starttime").innerHTML = "You started your Exam at " + f.getHours() + ":" + f.getMinutes();
             
          
        }
        function f2() {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                document.getElementById("showtime").innerHTML = "Time Left:"+min+":" + sec+"";
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) == 0) {
                    min = parseInt(min) - 1;
                    if (parseInt(min) == 0) {
                        clearTimeout(tim);
                        location.href = "default5.aspx";
                    }
                    else {
                        sec = 60;
                        document.getElementById("showtime").innerHTML = "Time Remining :" + min + " Minutes ." + sec + " Seconds";
                        tim = setTimeout("f2()", 1000);
                    }
                }
               
            }
        }
    </script>






</head>

<body onload="f1()" >


 <div style="width:1000px; margin:0 auto;padding-top:30px;padding-bottom:50px">
<div class="card" style="width: 60rem;padding-bottom:10px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Exam



    <form id="form1" runat="server">
    <div>
      <table width="15%" align="right">
    
        <tr>
          <td>
          <!--   <div id="starttime"></div><br /> -->
           <!--  <div id="endtime"></div><br /> -->
            <div id="showtime"></div>
          </td>
        </tr>
   
      </table>
    
   

    </div>
    </form>



</h5>

 <div class="card-body">






  
<% if(request.getAttribute("traverse_status")!=null){
	//out.print(request.getAttribute("success"));
	String message = (String)request.getAttribute("traverse_status");
	%>
	<script type="text/javascript">
    var msg = "<%=message%>";
   alert(msg);
 
   
    
    
</script>
	<%
	
	
	}
	


if(request.getAttribute("reviews")!=null){
	//out.print(request.getAttribute("success"));
	String message = (String)request.getAttribute("reviews");
	%>
	<script type="text/javascript">
   var msg = "<%=message%>";
  var r= confirm(msg);
  if (r == true) {
	  txt = "You pressed OK!";
	  window.location.href = "view_score.jsp";
	} else {
		  e.preventDefault();
		// document.getElementById("Previous").click();
	}
</script>
	<%
	
	
	}
	 
	
	
	
	
	
	%>
	
<div class="container" style="width:100%;padding:6px;">
<form action="Exam" method="post">
<input type="hidden"  name="question_id" value="<%=request.getAttribute("question_id")%>"/>

 

<%=session.getAttribute("question_number")%>.<%=request.getAttribute("question")%>



  <div class="input-group mb-3">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="radio"   name="option" value="a">
    </div>
  </div>
  <input type="text" class="form-control" value="<%=request.getAttribute("option_a")%>"  readonly aria-label="Text input with checkbox">
</div>

  <div class="input-group mb-3">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="radio"   name="option" value="b">
    </div>
  </div>
  <input type="text" class="form-control" value="<%=request.getAttribute("option_b")%>"  readonly aria-label="Text input with checkbox">
</div>
  
    <div class="input-group mb-3">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="radio"   name="option" value="c">
    </div>
  </div>
  <input type="text" class="form-control" value="<%=request.getAttribute("option_c")%>"  readonly aria-label="Text input with checkbox">
</div>
  
    <div class="input-group mb-3">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="radio"   name="option" value="d">
    </div>
  </div>
  <input type="text" class="form-control" value="<%=request.getAttribute("option_d")%>"  readonly aria-label="Text input with checkbox">
</div>
   
  
  
  
  


<table>
<tr><td><input type="submit" name="submit" id="Previous" value="Previous" class='btn btn-primary'/>&nbsp;&nbsp;<input type="submit" name="submit" value="Review Answer" class='btn btn-primary'/>&nbsp;&nbsp;<input type="submit" name="submit" value="Next" class='btn btn-primary' /></td></tr>

</table>
<br><br><center><input type="submit"  name="submit" value="Finish"  class="btn btn-danger" /></center>

</form>

</div>












</div>
</div>
</div>

</body>
</html>