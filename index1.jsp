<!DOCTYPE html>
<html>
<head>
	<title>quiz Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
	.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>

</head>
<body>
	<header>
		
		
			
		<div id="menu">
			

		</div>



		<br><br>
		<div id="main">
			<Br>

			<center><h1 style="color: #cab8b8"><b><u>&nbsp ONLINE EXAM PORTAL</u></b></h1></center>

		</hr>
		<br>
		
		<%
		String msg=request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
		%>
		<br> <br>
		<br>

		<form action="index.jsp" method="post">
   <input type="submit" name="button" class="button" value="Student portal">
</form>
<br>
<br>
<br>
<form action="admin-home.jsp" method="post">
	<input type="submit" name="button" class="button" value=" Admin portal">
</form>
		</div>
		
	</div>
</BR>
</header>
</body>
</html>