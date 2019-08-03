<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="adminhome.jsp"></jsp:include>





<div style="width:760px; margin:0 auto;padding-top:50px;padding-bottom:50px">
<div class="card" style="width: 50rem;padding-bottom:30px;background:#f5f5f5">
<h5 class="card-header" align="center" style="background:#dcdcdc;">Add new Question</h5>

 <div class="card-body">

<form action="AdminAddQuestions" method="post">
<table align="center">
<tr><td>Question<br><br></td><td><textarea rows="5" cols="90" style="overflow:hidden" name="question" required class="form-control"
 oninvalid="this.setCustomValidity('Set Question Here')"
    oninput="this.setCustomValidity('')" ></textarea><br><br></td></tr>

<tr><td>Option a<br><br></td><td><textarea rows="2" cols="90" style="overflow:hidden" name="option_a" required class="form-control"
 oninvalid="this.setCustomValidity('Set Option a')"
    oninput="this.setCustomValidity('')" ></textarea> <br><br></td></tr>
<tr><td>Option b<br><br></td><td><textarea rows="2" cols="90" style="overflow:hidden" name="option_b" required class="form-control"
 oninvalid="this.setCustomValidity('Set Option b')"
    oninput="this.setCustomValidity('')" ></textarea><br><br></td></tr>
<tr><td>Option c<br><br></td><td><textarea rows="2" cols="90" style="overflow:hidden" name="option_c" required class="form-control"
 oninvalid="this.setCustomValidity('Set option c')"
    oninput="this.setCustomValidity('')" ></textarea><br><br></td></tr>
<tr><td>Option d<br><br></td><td><textarea rows="2" cols="90" style="overflow:hidden" name="option_d" required class="form-control"
 oninvalid="this.setCustomValidity('Set option d')"
    oninput="this.setCustomValidity('')" ></textarea><br><br></td></tr>
<tr><td>Answer<br><br></td><td><select name="answer">
							<option>a</option>
							<option>b</option>
							<option>c</option>
							<option>d</option>
							</select><br><br>
							</td></tr>
<tr><td>Difficulty<br><br></td><td>
							<select name="difficulty">
							<option>Easy</option>
							<option>Medium</option>
							<option>Hard</option>
							</select><br><br>
							</td></tr>
<tr><td><br><br></td><td><input type="submit" value="Submit" class="btn btn-primary" /><% if(request.getAttribute("success")!=null){
	out.print(request.getAttribute("success"));
	}%></td></tr>

</table>
</form>


</div>

</div>
</div>

</body>
</html>