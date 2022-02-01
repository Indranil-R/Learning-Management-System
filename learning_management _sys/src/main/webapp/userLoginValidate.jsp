<%@page import="com.entity.Student"%>
<%@page import="com.DAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
StudentDAO studentDAO = new StudentDAO();
Student student = studentDAO.login(username, password);
if (student != null) {

	session.setAttribute("name", student.getName());
	session.setAttribute("username", student.getUsername());
	session.setAttribute("email", student.getEmail());
	session.setAttribute("phone", student.getMobile());
	session.setAttribute("city", student.getCity());
	session.removeAttribute("error");
	response.sendRedirect("homejava.jsp");
} else {
	session.setAttribute("error", "INVALID USERNAME OR PASSWORD");
	response.sendRedirect("userlogin.jsp");
}
%>
