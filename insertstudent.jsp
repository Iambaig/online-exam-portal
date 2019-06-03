<%@page import="java.sql.*"%>
<%
	
	
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String emailid=request.getParameter("emailid");
	String mobile=request.getParameter("mobile");
	String gender=request.getParameter("gender");
	String dob=request.getParameter("date");
	String qualification=request.getParameter("qualification");
	String address=request.getParameter("address");
	String image=request.getParameter("image");
	Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
String sql="insert into student values(?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,password);
ps.setString(3,emailid);
ps.setString(4,mobile);
ps.setString(5,gender);
ps.setString(6,dob);
ps.setString(7,qualification);
ps.setString(8,address);
ps.setString(9,image);
int count=ps.executeUpdate();
if(count>0)
{
	response.sendRedirect("student-login.jsp");
}
else
{
	response.sendRedirect("studentregistration.jsp?msg=Registration unsuccessful");
}


%>