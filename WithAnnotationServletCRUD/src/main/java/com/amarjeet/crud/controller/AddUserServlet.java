package com.amarjeet.crud.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet(name = "addServlet", urlPatterns = "/add-user")
public class AddUserServlet extends HttpServlet {
    private static final String URL = "jdbc:mysql://localhost:3306/crud_demo";
    private static final String USER = "root";
    private static final String PASSWORD = "root";
    private static final String INSERT_USER_SQL = "INSERT INTO users (name, email, number, course, state, country) VALUES (?, ?, ?, ?, ?, ?)";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Attempt to load MySQL JDBC Driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            log("MySQL JDBC Driver not found. Ensure the MySQL Connector JAR is in your project.", e);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database driver not found.");
            return;
        }

        // Retrieve form parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String number = request.getParameter("number");
        String course = request.getParameter("course");
        String state = request.getParameter("state");
        String country = request.getParameter("country");

        // Validate mandatory fields
        if (name == null || email == null || country == null || name.isEmpty() || email.isEmpty() || country.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Mandatory fields are missing.");
            return;
        }

        // Database operation
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {

            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, number);
            preparedStatement.setString(4, course);
            preparedStatement.setString(5, state);
            preparedStatement.setString(6, country);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                response.sendRedirect("add-success.jsp");
            } else {
                log("Failed to insert the user into the database.");
                response.sendRedirect("add-error.jsp");
            }

        } catch (SQLException e) {
            log("Database operation failed.", e);
            response.sendRedirect("add-error.jsp");
        }
    }

    // Logging helper method
    public void log(String message, Throwable throwable) {
        System.err.println(message);
        if (throwable != null) {
            throwable.printStackTrace();
        }
    }
}
