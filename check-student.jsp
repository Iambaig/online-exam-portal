<%@page import="java.sql.*"%>
<%
	String emailid=request.getParameter("emailid");
	
	String password=request.getParameter("password");

		Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select* from student where emailid=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,emailid);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
	{        
		    session.setAttribute("emailid",emailid);
			response.sendRedirect("student-home.jsp?msg=Registration successful");
	}
	else
		{
				response.sendRedirect("student-login.jsp?msg=Invalid user");
		}
		%>