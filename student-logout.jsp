
<html>
<head>
<script type="text/javascript">
window.history.forward();
function noBack()
{
window.history.forward();
}
</script>

<meta http-equiv="refresh"content="1;url=student-login.jsp?<br>msg=logout successfully"/>
</head>
<body onload="noBack();" onpageshow="if(event.persisted)noBack();" onUnload="">
<%
 session.invalidate();
%>
</body>