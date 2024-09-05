package com.example.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get the form data

		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Connection connection = null;
		PreparedStatement statement = null;

		try {
			// Load the JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Establish the connection
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "root");

			// Prepare the SQL query
			String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
			statement = connection.prepareStatement(sql);

			// Set the parameters

			statement.setString(1, username);
			statement.setString(2, email);
			statement.setString(3, password);

			// Execute the query
			int result = statement.executeUpdate();

//			if (result > 0) {
//				// Forward to success page
//				request.setAttribute("username", username);
//				RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
//				dispatcher.forward(request, response);
//			} else {
//				// Handle failure (could be implemented as an error message)
//				response.getWriter().println("Error in signup process. Please try again.");
//			}

			if (result > 0) {
				request.setAttribute("username", username);
				RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
				dispatcher.forward(request, response);
				response.sendRedirect("success.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				// Close resources
				if (statement != null)
					statement.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
