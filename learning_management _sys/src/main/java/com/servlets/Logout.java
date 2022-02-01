package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.removeAttribute("id");
		session.removeAttribute("username");
		session.removeAttribute("password");
		session.removeAttribute("name");
		session.removeAttribute("language");
		session.removeAttribute("marks");
		session.invalidate();
		res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
		res.sendRedirect("userlogin.jsp");
	}
}
