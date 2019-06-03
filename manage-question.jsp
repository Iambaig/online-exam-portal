<!DOCTYPE html>
<html>
<head>
	<title>Online Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		tr
		{
			color: #fff;

		}
	</style>
</head>
<body bgcolor="D7C0BB">
	<header>
            <jsp:include page="admin-menu.jsp"/>
		<
		<div id="menu">
			
			<jsp:include page="admin-header.jsp"/>
		</div>
		
		<div id="main">
			<%
		String msg=request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
		%>
		<br>
		<br>
		<br>
		<br>
		<form action="insert-question.jsp" method="post">
		<table width>
		<tr>
			<td>question no:</td>
			<td><input type="text" name="qno"></td>
		</tr>
		<tr>
			<td>question</td>
			<td><textarea name="question"></textarea></td>

		</tr>
		<tr>
			<td>option1</td>
			<td><input type="text" name="option1"></td>
		</tr>
		<tr>
			<td>option2</td>
			<td><input type="text" name="option2"></td>
		</tr>
		<tr>
			<td>option3</td>
			<td><input type="text" name="option3"></td>
		</tr>
		<tr>
			<td>option4</td>
			<td><input type="text" name="option4"></td>
		</tr>
		<tr>
			<td>answer:</td>
			<td>
				<select name="answer">
					<option>select</option>
					<option>option1</option>
					<option>option2</option>
					<option>option3</option>
					<option>option4</option>
				</select>
			</td>
		</tr>
		<tr>
			
			<td><input type="submit" name="btn1" value="Add question"></td>
			<td><input type="reset" name="btn2" value="cancel"></td>
</tr>
</table>
</form>
<a href="extract-question.jsp" style="color: #fff">view section</a>
		</div>
		
</body>
</html>  