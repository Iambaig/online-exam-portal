<!DOCTYPE html>
<html>
<head>
	<title>quiz Exam</title>
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
			<jsp:include page="menu.jsp"/>

		</div>



		<br><br><br><br><br><br><br>
		<div id="main">
			<BR> 
			<h1 style="color: #cab8b8"><b><u>&nbsp Student Login</u></b></h1>

		</hr>
		<br>
		
		<%
		String msg=request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
		%>
<form action="check-student.jsp" method="post" onsubmit="convert()">
		<table>
		
		<tr>
			<td><h2 style="color: #bbc7d0">emailid:<h2></td>
			<td><input type="text" name="emailid"></td>

		</tr>
		<tr>
			<td><h2 style="color: #bbc7d0">password</h2></td>
			<td><input type="password" name="password" id="password"></td>
		</tr>
		
		<tr>
			
			<td><input type="submit" name="btn1" value="submit"></td>
			<td><input type="reset" name="btn2" value="cancel"></td>
</tr>
</table>
</form>
		</div>
		
	</div>
</BR>
</header>
</body>
</html>