package com.amarjeet.crud.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteUserByIdServlet extends HttpServlet {

    private static final String URL = "jdbc:mysql://localhost:3306/crud_demo?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "root";
    private static final String DELETE_USER_SQL = "DELETE FROM users WHERE id = ?";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = request.getParameter("userId");

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER_SQL)) {

                // Set parameter and execute the deletion
                preparedStatement.setInt(1, Integer.parseInt(userId));
                int rowsAffected = preparedStatement.executeUpdate();

                // Display result
                if (rowsAffected > 0) {
                    out.println("<div class='alert alert-success'>User with ID: " + userId
                            + " has been deleted successfully.</div>");
                } else {
                    out.println("<div class='alert alert-danger'>No user found with ID: " + userId + "</div>");
                }

                // Add a button to return to homepage
                out.println("<br><a href='index.jsp' class='btn btn-primary'>Return to Homepage</a>");

            } catch (Exception e) {
                e.printStackTrace();
                out.println("<div class='alert alert-danger'>Error occurred while deleting the user.</div>");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("<div class='alert alert-danger'>MySQL JDBC Driver not found.</div>");
        }
    }
}
