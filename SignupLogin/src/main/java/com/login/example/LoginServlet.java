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


public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection connection = DBConnection.getConnection()) {
            String sql = "SELECT * FROM loginsignup WHERE email = ? AND password = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, email);
                statement.setString(2, password);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    // Set attribute to pass username to the JSP
                    request.setAttribute("username", resultSet.getString("username"));
                    
                    // Forward the request to success.jsp
                    RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
                    dispatcher.forward(request, response);
                } else {
                    // Set an error message
                    request.setAttribute("errorMessage", "Invalid login credentials please try again.");
                    
                    // Include the content of login.jsp with the error message
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.include(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while processing your request. Please try again later.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
