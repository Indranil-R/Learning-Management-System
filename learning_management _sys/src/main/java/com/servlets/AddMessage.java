package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.AnnouncementDAO;

public class AddMessage extends HttpServlet {
	AnnouncementDAO announcementDAO = new AnnouncementDAO();

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = request.getParameter("announcement");
		announcementDAO.addAnnouncement(message);
		response.sendRedirect("addMessage.jsp");
	}

}
