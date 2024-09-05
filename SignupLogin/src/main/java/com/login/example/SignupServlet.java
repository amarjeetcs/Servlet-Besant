package com.login.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection connection = DBConnection.getConnection()) {
            // Check if the email already exists
            String checkSql = "SELECT COUNT(*) FROM loginsignup WHERE email = ?";
            try (PreparedStatement checkStatement = connection.prepareStatement(checkSql)) {
                checkStatement.setString(1, email);
                try (ResultSet resultSet = checkStatement.executeQuery()) {
                    if (resultSet.next() && resultSet.getInt(1) > 0) {
                        // Email already exists, set error message and forward back to signup page
                        request.setAttribute("errorMessage", "A user with this email already exists.");
                        request.getRequestDispatcher("signup.jsp").forward(request, response);
                        return;
                    }
                }
            }

            // If the email doesn't exist, proceed with the insertion
            String sql = "INSERT INTO loginsignup (username, email, password) VALUES (?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, username);
                statement.setString(2, email);
                statement.setString(3, password);
                int result = statement.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("login.jsp"); // Redirect to login page after successful signup
                } else {
                    request.setAttribute("errorMessage", "Error in signup process.");
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error.");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
    }
}
