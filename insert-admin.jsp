<%@page import="java.sql.*"%>
<%
	
	
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String email=request.getParameter("email");
	String mobile=request.getParameter("mobile");
	
	String qualification=request.getParameter("qualification");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
String sql="insert into admin values(?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,password);
ps.setString(3,email);

ps.setString(4,mobile);
ps.setString(5,qualification);

int count=ps.executeUpdate();
if(count>0)
{
	response.sendRedirect("admin-login.jsp");
}
else
{
	response.sendRedirect("studentregistration.jsp?msg=Registration unsuccessful");
}


%>