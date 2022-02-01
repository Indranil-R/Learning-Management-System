<%@page import="com.DAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("newPassword");
String oldPassword = request.getParameter("oldPassword");
StudentDAO dao = new StudentDAO();

if (dao.validateOldPassword(username, oldPassword)) {
	dao.updatePassword(username, password);
	session.removeAttribute("error");
	session.setAttribute("success", "Password updated successfully");
	response.sendRedirect("changePassword.jsp");
} else {
	session.setAttribute("error", "Old Password did not match");
	session.removeAttribute("success");
	response.sendRedirect("changePassword.jsp");
}
%>

