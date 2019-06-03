<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Online Exam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		tr
		{
			color: #fff;
		}
	</style>
	<script language="javascript">
		var tim;
		var min=1;
		var sec=0;
		var f=new Date();
		function examTimer()
		{
			if(parseInt(sec)>0)
			{
				document.getElementById("showtime").innerHTML="Time Remaining:"+min+"minutes,"+sec+"seconds";
				sec=parseInt(sec)-1;
				tim=setTimeout("examTimer()",1000);

			}
			else
			{
				if(parseInt(min)==0 && parseInt(sec)==0)
				{
					document.getElementById("showtime").innerHTML="Time Remaining:"+min+"minutes,"+sec+"seconds";
					alert("time up");
					document.questionform.minute.value=0;
					document.questionform.second.value=0;
					document.questionform.submit();
				}
				if(parseInt(sec)==0)
				{
					document.getElementById("showtime").innerHTML="Time Remaining:"+min+"minutes,"+sec+"seconds";
					min=parseInt(min)-1;
					sec=59;
					tim=setTimeout("examTimer()",1000);
				}
			    }
				}
			</script>
				

</head>
<body bgcolor="D7C0BB" onload="examTimer()">
	<header>
            <jsp:include page="student-menu.jsp"/>
		
		<div id="menu">
			
			<jsp:include page="student-header.jsp"/>
		</div>
		
		<div id="main">
		<form name="questionForm" action="calculate.jsp" method="post">
				<input type="hidden" name="minute">
		<input type="hidden" name="second">
		<b id="showtime"></b>
		<table>	
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","quizexam","quizexam");
Statement st=con.createStatement();
String sql="select*from question";
ResultSet rs=st.executeQuery(sql);
int total=0;
while(rs.next())
{
	total++;
	String qno=rs.getString("qno");
String question=rs.getString("question");
String option1=rs.getString("option1");
String option2=rs.getString("option2");
String option3=rs.getString("option3");
String option4=rs.getString("option4");
String answer=rs.getString("answer");

%>
<br>
<br>

<tr>
	<td><%=qno%>.<%=question%></td>
</tr>
<tr>
	<td><input type="radio" name="<%=qno%>" value="option1"><%=option1%></td>
</tr>
<tr>
	<td><input type="radio" name="<%=qno%>" value="option2"><%=option2%></td>
</tr>
<tr>
	<td><input type="radio" name="<%=qno%>" value="option3"><%=option3%></td>
</tr>
<tr>
	<td><input type="radio" name="<%=qno%>" value="option3"><%=option4%></td>
</tr>
<%
}
con.close();
%>
<tr>
	<td><input type="submit" value="submit exam"></td>
</tr>
</table>
<input type="hidden" name="total" value="<%=total%>">
</form>

		</div>
		\
	</div>
</body>
</html>  