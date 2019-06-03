<%@page import="java.sql.*"%>

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
            
            <jsp:include page="student-menu.jsp"/>
		</div>
		<div id="menu">
			
			 <jsp:include page="student-header.jsp"/>
		</div>
		
		<div id="main">
			<%
		String emailid=(String)session.getAttribute("emailid");
		Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select* from result where emailid='"+emailid+"'";
ResultSet rs=st.executeQuery(sql);
%>
<br>
<br>
<br>
<br>
<center>
<table cellpadding="7" border="1" cellspacing="0" width="70%">
	<tr>
		<th>sl no.</th>
		<th>mark</th>
		<th>total</th>
	</tr>
	<%
	int count=0;
	while(rs.next())
	{
		count++;
		%>
		<tr>
			<td>test<%=count%></td>
			<td><%=rs.getString("correct")%></td>
			<td><%=rs.getString("totalmark")%></td>
		</tr>
	<%
}
%>
</table>
</center>
	
</body>
</html>  