<!DOCTYPE html>
<html>
<head>
	<title>Quiz Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script language="javascript" src="md5.js"></script>
	<script language="javascript">
		function convert()
		{
			password=document.getElementById("password").value;
			password=md5(password);
			document.getElementById("password").value=password;
		}
	</script>
</head>
<body>
	<header>
		
		<div id="logo">
			
		<div id="menu">
			<jsp:include page="menu1.jsp"/>

		</div>



		<br><br><br><br><br><br><br>
		<div id="main">
			<BR> 
			<h1 style="color: #cab8b8"><b><u>&nbsp Admin Registration</u></b></h1>

		</hr>
		<br>
				<%
		String msg=request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
		%>
<form action="insert-admin.jsp" method="post" onsubmit="convert()">
		<table>
		<tr>
			<td style="color: #bbc7d0" ><h2>name</h2></td>
			<td><input type="text" name="name" required placeholder="Enter admin name"></td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>password</h2></td>
			<td><input type="password" name="password" id="password" required placeholder="Enter password"></td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>email</h2></td>
			<td><input type="text" name="email" required placeholder="Enter Emailid"></td>

		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>mobile</h2></td>
			<td><input type="number" name="mobile" required placeholder="Enter Mobileno"></td>
		</tr>
		
			<td style="color: #bbc7d0"><h2>qualification</h2></td>
			<td><select name="qualification">
					<option>select</option>
					<option>POST GRADUATE</option>
					<option>HS</option>
					<option>HSLC</option>
					
				</select></td>
		</tr>
		
		<tr>
			<td><input type="submit" name="btn1" value="submit"></td>
			<td><input type="reset" name="btn2" value="cancel"></td>
</tr>
</table>
</form>
		</div>
	</BR>
</body>
</html>