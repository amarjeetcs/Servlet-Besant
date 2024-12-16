package com.amarjeet.crud.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amarjeet.crud.model.Student;

@WebServlet(name = "fetchAllServlet", urlPatterns = "/fetch-all-users")
public class FetchAllUsersServlet extends HttpServlet {

    // Database connection details this is part of configuration
    private static final String DB_URL = "jdbc:mysql://localhost:3306/crud_demo";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";
    private static final String FETCH_ALL_USERS_SQL = "SELECT * FROM users";

    @Override
    public void init() throws ServletException {
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ServletException("JDBC Driver not found", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Student> userList = new ArrayList<Student>();
        
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(FETCH_ALL_USERS_SQL)) {
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while (resultSet.next()) {
                Student user = new Student();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setNumber(resultSet.getString("number"));
                user.setCourse(resultSet.getString("course"));
                user.setState(resultSet.getString("state"));
                user.setCountry(resultSet.getString("country"));
                userList.add(user);
            }
            
            // Set the user list as an attribute
            request.setAttribute("userList", userList);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error fetching user details");
        }

        // Forward to the JSP page to display user details
        RequestDispatcher dispatcher = request.getRequestDispatcher("fetch-data.jsp");
        dispatcher.forward(request, response);
    }
}
