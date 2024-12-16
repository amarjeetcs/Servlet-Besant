package com.amarjeet.send.redirect;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "addServlet", urlPatterns = "/submitForm")
public class ServletJava extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve form data (assuming the form has a "search" input field)
		String searchQuery = request.getParameter("search");
		response.sendRedirect("https://www.javatpoint.com/requestdispatcher-in-servlet");

	}
}
