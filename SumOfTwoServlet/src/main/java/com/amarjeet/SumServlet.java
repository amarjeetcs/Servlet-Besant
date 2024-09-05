package com.amarjeet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// The @WebServlet annotation maps this servlet to a URL pattern
@WebServlet("/SumServlet1")
public class SumServlet extends HttpServlet {
	static {
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    }
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get the input values from the request parameters
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");

		// Convert the input values to integers
		int number1 = Integer.parseInt(num1);
		int number2 = Integer.parseInt(num2);

		// Calculate the sum of the two numbers
		int sum = number1 + number2;
		// SQL insert query
		String sql = "INSERT INTO SumRecords (number1, number2, sum) VALUES (?, ?, ?)";

		// Database connection and insertion
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "root");
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			// Set the parameters
			stmt.setInt(1, number1);
			stmt.setInt(2, number2);
			stmt.setInt(3, sum);

			// Execute the insert
			stmt.executeUpdate();
			// Set the response content type
			response.setContentType("text/html");

			// Write the response back to the client
			PrintWriter out = response.getWriter();
			out.println("<html><body>");
			out.println("<h1>Sum of " + number1 + " and " + number2 + " is: " + sum + "</h1>");
			out.println("</body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
