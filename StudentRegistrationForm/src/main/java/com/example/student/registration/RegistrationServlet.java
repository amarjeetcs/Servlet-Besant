package com.example.student.registration;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String fatherName = request.getParameter("father_name");
		String motherName = request.getParameter("mother_name");
		String phoneNumber = request.getParameter("phone_number");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String bloodGroup = request.getParameter("blood_group");
		String collegeName = request.getParameter("college_name");
		int yearOfPassout = Integer.parseInt(request.getParameter("year_of_passout"));
		String qualification = request.getParameter("qualification");
		String course = request.getParameter("course");

		Part picPart = request.getPart("pic");
		InputStream picInputStream = picPart.getInputStream();

		String jdbcURL = "jdbc:mysql://localhost:3306/userdb";
		String jdbcUsername = "root";
		String jdbcPassword = "root";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String sql = "INSERT INTO students (name, father_name, mother_name, phone_number, email, gender, dob, address, blood_group, college_name, year_of_passout, qualification, course, pic) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
				PreparedStatement statement = connection.prepareStatement(sql)) {
			

			statement.setString(1, name);
			statement.setString(2, fatherName);
			statement.setString(3, motherName);
			statement.setString(4, phoneNumber);
			statement.setString(5, email);
			statement.setString(6, gender);
			statement.setDate(7, java.sql.Date.valueOf(dob));
			statement.setString(8, address);
			statement.setString(9, bloodGroup);
			statement.setString(10, collegeName);
			statement.setInt(11, yearOfPassout);
			statement.setString(12, qualification);
			statement.setString(13, course);
			statement.setBlob(14, picInputStream);

			int rowsInserted = statement.executeUpdate();
			if (rowsInserted > 0) {
				response.sendRedirect("success.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}
}
