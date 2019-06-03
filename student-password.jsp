<!DOCTYPE html>
<html>
<head>
	<title>Online Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
<script language="javascript" src="md5.js"></script>
	<script language="javascript">
		function convert()
		{
			password1=document.getElementById("password1").value;
			password1=md5(password1);
			document.getElementById("password1").value=password1;
password2=document.getElementById("password2").value;
			password2=md5(password2);
			document.getElementById("password2").value=password2;
		
		}
	</script>
</head>
<body bgcolor="D7C0BB">
	
	<header>
            <jsp:include page="student-menu.jsp"/>
            <div id="logo">
            	 
          
		
		<div id="menu">
			
			<jsp:include page="student-header.jsp"/>
		
		
		<div id="main">
			<%
		String msg=request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
		%>
		<br><br>
			<h3 style="color: #cab8b8">Change password</h3><br>
			<form action="update-student-password.jsp" method="post" onsubmit="convert()">
				<table>
					<tr>
						<td style="color: #fff">Current Password</td>
						<td><input type="password" name="cpassword" id="password1"></td>
					</tr>
					<tr>
						<td style="color: #fff">New Password</td>
						<td><input type="password" name="npassword" id="password2"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="update"></td>
					</tr>
				</table>
			</form>
			
		</div>
		
	</div>
</body>
</html>  