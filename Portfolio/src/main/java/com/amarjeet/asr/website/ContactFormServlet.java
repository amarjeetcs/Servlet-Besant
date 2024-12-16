package com.amarjeet.asr.website;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/submitContactForm")
public class ContactFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get form data
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");

		// Database credentials
		String dbURL = "jdbc:mysql://localhost:3306/portfolio";
		String dbUser = "root";
		String dbPassword = "root";

		// SQL query to insert data
		String sql = "INSERT INTO contact_form1 (name, email, subject, message) VALUES (?, ?, ?, ?)";

		try {
			// Establish a database connection
			Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

			// Prepare statement
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, name);
			statement.setString(2, email);
			statement.setString(3, subject);
			statement.setString(4, message);

			// Execute the query
			int rowsInserted = statement.executeUpdate();

			if (rowsInserted > 0) {
				response.getWriter().println("Message sent successfully!");
			} else {
				response.getWriter().println("Failed to send message.");
			}

			// Close resources
			statement.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("An error occurred: " + e.getMessage());
		}
	}
}
