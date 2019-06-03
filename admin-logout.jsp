<%
session.invalidate();
response.sendRedirect("admin-login.jsp?msg=logout successfully");
%>