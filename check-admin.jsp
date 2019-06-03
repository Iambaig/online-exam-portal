<%@page import="java.sql.*"%>
<%
	String email=request.getParameter("email");
	
	String password=request.getParameter("password");

		Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select* from admin where email=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,email);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
	{        
		    session.setAttribute("email",email);
			response.sendRedirect("admin1-home.jsp?msg=Registration successful");
	}
	else
		{
				response.sendRedirect("admin-login.jsp?msg=Invalid user");
		}
		%>