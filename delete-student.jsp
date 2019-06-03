<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String emailid=request.getParameter("emailid");
String mobileno=request.getParameter("mobile");
String address=request.getParameter("address");
String action=request.getParameter("action");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="delete from student where emailid='"+emailid+"'";
int count=st.executeUpdate(sql);
if(count>0)
{
	response.sendRedirect("manage-student.jsp");

}
else
{
	out.println("again");
}
con.close();
%>