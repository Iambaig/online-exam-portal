<%@page import="java.sql.*"%>
<%
String emailid1=(String)session.getAttribute("emailid");
if(emailid1==null)
{
	response.sendRedirect("student-login.jsp?msg=login Again");
}
else
{
	%>

<html>
<head>
	<title>Online Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
<jsp:include page="student-menu.jsp"/>
		
		
		<div id="menu">
			<jsp:include page="student-header.jsp"/>
		</div>
		
		<div id="main">
			<%
		String emailid=(String)session.getAttribute("emailid");
		Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select* from student where emailid='"+emailid+"'";
ResultSet rs=st.executeQuery(sql);
rs.next();
String name=rs.getString("name");
String mobile=rs.getString("mobile");
String gender=rs.getString("gender");
String dob=rs.getString("dob");
String qualification=rs.getString("qualification");
String address=rs.getString("address");
String image=rs.getString("image");
%>
<br>
<br>
<br>
<table cellpadding="7">
	<tr>
		<td  style="color: #fff">Name-</td>
		<td style="color: #fff"><%=name%></td>
	</tr>
	<tr>
		<td style="color: #fff">mobile-</td>
		<td style="color: #fff"><%=mobile%></td>
	</tr>
	<tr>
		<td style="color: #fff">gender-</td>
		<td style="color: #fff"><%=gender%></td>
	</tr>
	<tr>
		<td style="color: #fff">dob-</td>
		<td style="color: #fff"><%=dob%></td>
	</tr>
	<tr>
		<td style="color: #fff">qualification-</td>
		<td style="color: #fff"><%=qualification%></td>
	</tr>
	<tr>
		<td style="color: #fff">address-</td>
		<td style="color: #fff"><%=address%></td>
	</tr>
	<tr>
		<td style="color: #fff">image-</td>
		<td style="color: #fff"><%=image%></td>
	</tr>
	

</table>

</body>
</html> 
<%
}
%> 