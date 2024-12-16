package com.amarjeet.portfolio;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/portfolio";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Load database driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Forward to error page if driver not found
            request.setAttribute("errorMessage", "Database driver not found.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            return;
        }

        // Retrieve form parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Initialize database connection and statement
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "INSERT INTO contact_form (name, email, subject, message) VALUES (?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, name);
                statement.setString(2, email);
                statement.setString(3, subject);
                statement.setString(4, message);
                statement.executeUpdate();
            }

            // Set success message
            request.setAttribute("successMessage", "Your data has been saved successfully.");
        } catch (Exception e) {
            e.printStackTrace();
            // Set error message
            request.setAttribute("errorMessage", "An error occurred while saving your data.");
        }

        // Forward to index.jsp with message
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
