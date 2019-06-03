<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Online Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		table
		{
			color: #fff;
		}
	</style>
</head>
<body bgcolor="D7C0BB">
	<header>
            <jsp:include page="admin-menu.jsp"/>
		</div>
		<div id="menu">
			<jsp:include page="admin-header.jsp"/>
			
		</div>
		
		<div id="main">
			<br>
			<br>
			<br>
			<br>
<table border="2" cellpadding="7" cellspacing="0">
	<tr style="color: #fff">
		<td>qno</td>
		<td>question</td>
		<td>option1</td>
		<td>option2</td>
		<td>option3</td>
		<td>option4</td>
		<td>answer</td>
		<td>Action</td>


         

	</tr>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select*from question";
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
	String qno=rs.getString("qno");
String question=rs.getString("question");
String option1=rs.getString("option1");
String option2=rs.getString("option2");
String option3=rs.getString("option3");
String option4=rs.getString("option4");
String answer=rs.getString("answer");
%>
<tr style="color: #fff">
		<td><%=qno%></td>
		<td><%=question%></td>
		<td><%=option1%></td>
		<td><%=option2%></td>
		<td><%=option3%></td>
		<td><%=option4%></td>
		<td><%=answer%></td>
		<td><a href="delete-question.jsp?qno=<%=qno%>">delete</a></td>


         

	</tr>
	<%
}
con.close();
%>
</table>
</form>

		
	</div>
</body>
</html>  
