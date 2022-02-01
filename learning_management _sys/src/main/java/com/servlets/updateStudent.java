package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.StudentDAO;
import com.entity.Student;

public class updateStudent extends HttpServlet {
	StudentDAO studentDAO = new StudentDAO();

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name = request.getParameter("name");
			String username = request.getParameter("username");
			String city = request.getParameter("city");
			String email = request.getParameter("email");
			Long contact = Long.parseLong(request.getParameter("contact"));

			studentDAO.updateDetail(
					new Student(username, studentDAO.getStudent(username).getPassword(), name, contact, email, city));
//					new Student(username, studentDAO.getStudent(username).getPassword(), contact, email, city));
			response.sendRedirect("allScholar.jsp");

		} catch (Exception e) {
			response.sendRedirect("allScholar.jsp");
		}
	}
}
