package com.login.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ForgotPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");

        try (Connection connection = DBConnection.getConnection()) {
            String sql = "SELECT * FROM loginsignup WHERE email = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, email);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    // Email exists, forward to reset password page
                    request.setAttribute("email", email);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("reset-password.jsp");
                    dispatcher.forward(request, response);
                } else {
                    // Email doesn't exist, show an error message
                    request.setAttribute("errorMessage", "Email not found.");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("forgot-password.jsp");
                    dispatcher.include(request, response);
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
