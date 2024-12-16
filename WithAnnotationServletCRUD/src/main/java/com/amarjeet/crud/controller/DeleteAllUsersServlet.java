package com.amarjeet.crud.controller;

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

@WebServlet(name = "deleteAllServlet", urlPatterns = "/delete-all-users")
public class DeleteAllUsersServlet extends HttpServlet {

    private static final String URL = "jdbc:mysql://localhost:3306/crud_demo?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "root";
    private static final String DELETE_ALL_USERS_SQL = "DELETE FROM users";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Load MySQL JDBC Driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("<div class='alert alert-danger'>MySQL JDBC Driver not found.</div>");
            return;
        }

        try (PrintWriter out = response.getWriter();
             Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_ALL_USERS_SQL)) {

            // Execute deletion of all users
            int rowsAffected = preparedStatement.executeUpdate();

            // Display result
            if (rowsAffected > 0) {
                out.println("<div class='alert alert-success'>All users have been deleted successfully.</div>");
            } else {
                out.println("<div class='alert alert-danger'>No users found to delete.</div>");
            }

            // Add a button to return to homepage
            out.println("<br><a href='index.jsp' class='btn btn-primary'>Return to Homepage</a>");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<div class='alert alert-danger'>Error occurred while deleting users.</div>");
        }
    }
}
