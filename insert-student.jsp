<%@page import="java.sql.*"%>
<%
	String name=request.getParameter("name");
	
	String emailid=request.getParameter("emailid");
	String password=request.getParameter("password");
	String mobileno=request.getParameter("mobile");
	String gender=request.getParameter("gender");
	String dob=request.getParameter("date");
	String qualification=request.getParameter("answer");
	String address=request.getParameter("address");
	Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
String sql="insert into student values(?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,name);

ps.setString(2,emailid);
ps.setString(3,password);
ps.setString(4,mobileno);
ps.setString(5,gender);
ps.setString(6,dob);
ps.setString(7,qualification);
ps.setString(8,address);
int count=ps.executeUpdate();
if(count>0)
{
	response.sendRedirect("student-login.jsp?msg=Registration successful");
}
else
{
	response.sendRedirect("studentregistration.jsp?msg=Registration unsuccessful");
}


	