package com.amarjeet.crud.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amarjeet.crud.model.Student;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "fetchUserServlet", urlPatterns = "/fetch-user")
public class FetchUserServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/crud_demo";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";
    private static final String FETCH_USER_SQL = "SELECT * FROM users WHERE id = ?";

    @Override
    public void init() throws ServletException {
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ServletException("JDBC Driver not found", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userId = request.getParameter("userId");  // Get the user ID from the request
        Student user = null;  // We'll use a single Student object instead of a list

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(FETCH_USER_SQL)) {

            // Set the user ID parameter in the SQL query
            preparedStatement.setInt(1, Integer.parseInt(userId));
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // If a user is found, map the result set to a Student object
                user = new Student();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setNumber(resultSet.getString("number"));
                user.setCourse(resultSet.getString("course"));
                user.setState(resultSet.getString("state"));
                user.setCountry(resultSet.getString("country"));
            }

            // Set the user as an attribute (null if not found)
            request.setAttribute("user", user);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error fetching user details");
        }

        // Forward to the JSP page to display user details or error message
        RequestDispatcher dispatcher = request.getRequestDispatcher("fetchById.jsp");
        dispatcher.forward(request, response);
    }
}
