<%@page import="com.entity.Student"%>
<%@page import="com.DAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
try {
	StudentDAO studentDAO = new StudentDAO();
	studentDAO.addStudent(new Student(request.getParameter("username"), request.getParameter("password"),
	request.getParameter("name"), Long.parseLong(request.getParameter("contact")),
	request.getParameter("email"), request.getParameter("city")));
	session.setAttribute("success", "Student added successfully");
	session.removeAttribute("error");
	response.sendRedirect("addstudent.jsp");
} catch (Exception e) {
	session.removeAttribute("success");
	session.setAttribute("error", "Username is taken already");
	response.sendRedirect("addstudent.jsp");
}
%>