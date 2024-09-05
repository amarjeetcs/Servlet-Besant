package com.login.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ResetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String newPassword = request.getParameter("newPassword");

        try (Connection connection = DBConnection.getConnection()) {
            String sql = "UPDATE loginsignup SET password = ? WHERE email = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, newPassword);
                statement.setString(2, email);

                int rowsUpdated = statement.executeUpdate();
                if (rowsUpdated > 0) {
                    // Password updated successfully
                    request.setAttribute("successMessage", "Password has been reset successfully.");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                } else {
                    // Email not found in the database
                    request.setAttribute("errorMessage", "Error resetting password. Email not found.");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("reset-password.jsp");
                    dispatcher.forward(request, response); // Use forward to show message on the same page
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }
    }
}
