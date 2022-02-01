<%@page import="com.DAO.AnnouncementDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
AnnouncementDAO dao = new AnnouncementDAO();
dao.delete();
response.sendRedirect("addMessage.jsp");
%>
</body>
</html>