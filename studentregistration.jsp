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
			<jsp:include page="menu.jsp"/>

		</div>



		<br><br><br><br><br><br><br>
		<div id="main">
			<BR> 
			<h1 style="color: #cab8b8"><b><u>&nbsp Student Registration</u></b></h1>

		</hr>
		<br>
				<%
		String msg=request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
		%>
<form action="insertstudent.jsp" method="post" onsubmit="convert()">
		<table>
		<tr>
			<td style="color: #bbc7d0" ><h2>name</h2></td>
			<td><input type="text" name="name" required placeholder="Enter a name"></td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>password</h2></td>
			<td><input type="password" name="password" id="password" required placeholder="Enter password"></td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>emailid</h2></td>
			<td><input type="text" name="emailid" required placeholder="Enter Emailid"></td>

		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>mobileno</h2></td>
			<td><input type="number" name="mobile" required placeholder="Enter Mobileno"></td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>gender</h2></td>
			<td style="color: #fff"><input type="radio" name="gender" value="male">male
				<input type="radio" name="gender" value="female">female</td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>dob</h2></td>
			<td><input type="date" name="date" required placeholder="date of birth"></td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>qualification</h2></td>
			<td><select name="qualification">
					<option>select</option>
					<option>POST GRADUATE</option>
					<option>HS</option>
					<option>HSLC</option>
					
				</select></td>
		</tr>
		<tr>
			<td style="color: #bbc7d0"><h2>address</h2></td>
			<td>
				<textarea name="address" placeholder="enter address"></textarea>>
			</td>
		</tr>
		<tr>
<td style="color: #bbc7d0"><h2>image</h2></td>		
	<td><input type="file" name="image" placeholder="image"></td>
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