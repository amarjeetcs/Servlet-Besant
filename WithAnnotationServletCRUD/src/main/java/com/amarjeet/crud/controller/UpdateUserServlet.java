package com.amarjeet.crud.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "updateUserServlet", urlPatterns = "/update-user")
public class UpdateUserServlet extends HttpServlet {
    private static final String URL = "jdbc:mysql://localhost:3306/crud_demo";
    private static final String USER = "root";
    private static final String PASSWORD = "root";
    private static final String UPDATE_USER_SQL =
            "UPDATE users SET name = ?, email = ?, number = ?, course = ?, state = ?, country = ? WHERE id = ?";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String number = request.getParameter("number");
        String course = request.getParameter("course");
        String state = request.getParameter("state");
        String country = request.getParameter("country");

        try {
            // Register the MySQL JDBC driver (optional in modern JDBC, but safe to include)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_SQL)) {

                // Set parameters for the update query
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, number);
                preparedStatement.setString(4, course);
                preparedStatement.setString(5, state);
                preparedStatement.setString(6, country);
                preparedStatement.setInt(7, Integer.parseInt(userId));

                // Execute the update query
                int rowsUpdated = preparedStatement.executeUpdate();

                // Redirect based on the update result
                if (rowsUpdated > 0) {
                    response.sendRedirect("update-success.jsp");
                } else {
                    response.sendRedirect("update-error.jsp");
                }
            }
        } catch (ClassNotFoundException e) {
            // Handle case where JDBC driver is not found
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=DriverNotFound");
        } catch (SQLException e) {
            // Handle SQL-related exceptions
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=DatabaseError");
        }
    }
}
