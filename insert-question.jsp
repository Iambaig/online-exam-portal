<%@page import="java.sql.*"%>
<%
String qno=request.getParameter("qno");
String question=request.getParameter("question");
String option1=request.getParameter("option1");
String option2=request.getParameter("option2");
String option3=request.getParameter("option3");
String option4=request.getParameter("option4");
String answer=request.getParameter("answer");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
String sql="insert into question values(?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,qno);
ps.setString(2,question);
ps.setString(3,option1);
ps.setString(4,option2);
ps.setString(5,option3);
ps.setString(6,option4);
ps.setString(7,answer);



//Statement st=con.createStatement();
//String sql="insert into question values('"+qno+"','"+question+"','"+option1+"','"+option2+"','"+option3+"','"+option4+"','"+answer+"')";
int count=ps.executeUpdate();
if(count>0)
{
	response.sendRedirect("manage-question.jsp?msg=question added");

}
else
{
	response.sendRedirect("manage-question.jsp?msg=try again");
}
con.close();
%>
