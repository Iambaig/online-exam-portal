<%@page import="java.sql.*"%>
<%
String cpassword=request.getParameter("cpassword");
String npassword=request.getParameter("npassword");
String emailid=(String)session.getAttribute("emailid");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select* from student where emailid='"+emailid+"'and password='"+cpassword+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next())
	{
		String sql1="update student set password='"+npassword+"' where emailid='"+emailid+"'";
		int count=st.executeUpdate(sql1);
		if(count>0)
		{
			response.sendRedirect("student-password.jsp?msg=password changed");

		}
		else
		{
			response.sendRedirect("student-password.jsp?msg=try again");
		}
	}
	else
		{
			response.sendRedirect("student-password.jsp?msg=invalid current password");
		}
		%>