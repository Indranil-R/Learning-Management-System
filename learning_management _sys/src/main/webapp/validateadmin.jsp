<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String key = request.getParameter("key");
String username = request.getParameter("username");
String password = request.getParameter("password");
if (key.equals("admin") && username.equals("admin") && password.equals("admin")) {
	HttpSession adminsession = request.getSession();
	adminsession.setAttribute("adminloggedin", "loggedin");
	response.sendRedirect("adminDashboard.jsp");
} else {
%>
<script type='text/javascript'>
	alert('Authentication failed\r\nLogin Denied');
</script>
<%
response.sendRedirect("adminlogin.jsp");

}
%>