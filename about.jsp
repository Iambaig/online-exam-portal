<!DOCTYPE html>
<html>
<head>
	<title>QUIZ</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		
		
			
		<div id="menu">
			<jsp:include page="menu.jsp"/>

		</div>



		<br><br><br><br><br><br><br>
		<div id="main">
			<BR> 
			<h1 style="color: #cab8b8" style="text-align: left;"><b>Online examination is conducting a test<p> online to measure the knowledge of the <p>participants on a given topic.In the olden<p> days everybody had to gather in a <p>classroom at the same time to <p>take an exam With online examination.<P> students can do the exam<p> online, in their own time and with their <p>own device regardless where they life.<p> You online need a browser and<p> internet connection.</b></h1>

		</hr>
		<br>
				<%
		String msg=request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
		%>