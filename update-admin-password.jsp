<%@page import="java.sql.*"%>
<%
String cpassword=request.getParameter("cpassword");
String npassword=request.getParameter("npassword");
String emailid=(String)session.getAttribute("email");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select* from admin where email='"+email+"'and password='"+cpassword+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next())
	{
		String sql1="update student set password='"+npassword+"' where email='"+email+"'";
		int count=st.executeUpdate(sql1);
		if(count>0)
		{
			response.sendRedirect("admin-password.jsp?msg=password changed");

		}
		else
		{
			response.sendRedirect("admin-password.jsp?msg=try again");
		}
	}
	else
		{
			response.sendRedirect("admin-password.jsp?msg=invalid current password");
		}
		%>