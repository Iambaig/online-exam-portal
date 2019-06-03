<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Online Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body bgcolor="D7C0BB">
	<header>
		<jsp:include page="admin-menu.jsp"/>
		
		<div id="menu">
			<br>
			<jsp:include page="admin-header.jsp"/>
		</div>
		
		<div id="main">
			<br>
			<%
		//String emailid=(String)session.getAttribute("emailid");
		Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select * from student";
ResultSet rs=st.executeQuery(sql);
%>
<br>
<center>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1 style="color: #fff"><b><u>Student Book<u><b></h1>
	<br>
<table cellpadding="7" border="1" cellspacing="0" width="100%">
	<tr style="color: #fff">
		<th>name</th>
		<th>emailid</th>
		<th>mobile</th>
		<th>address</th>
		<th>action</th>
	</tr>
	<%
	
	while(rs.next())
	{
	String emailid=rs.getString("emailid");
		%>
		<tr style="color: #fff">
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("emailid")%></td>
			<td><%=rs.getString("mobile")%></td>
			<td><%=rs.getString("address")%></td>
			<td ><a href="delete-student.jsp?emailid=<%=emailid%>" style="color: #fff">delete</a></td>

		</tr>
	<%
}
%>
</table>
</center>
	
		</div>
		
</body>
</html>  