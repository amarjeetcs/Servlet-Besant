<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.amarjeet.crud.model.Student"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fetch All Users</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            margin-bottom: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
        .home-btn {
            margin-top: 30px;
            text-align: center;
        }
        .home-btn a {
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>All Users</h1>

    <%
        // Fetch the user list from the request attribute
        List<Student> userList = (List<Student>) request.getAttribute("userList");

        if (userList != null && !userList.isEmpty()) {
    %>
        <div class="row">
            <%
                for (Student user : userList) {
            %>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        User ID: <%= user.getId() %>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Name: <%= user.getName() %></h5>
                        <p class="card-text">
                            <strong>Email:</strong> <%= user.getEmail() %><br>
                            <strong>Number:</strong> <%= user.getNumber() %><br>
                            <strong>Course:</strong> <%= user.getCourse() %><br>
                            <strong>State:</strong> <%= user.getState() %><br>
                            <strong>Country:</strong> <%= user.getCountry() %>
                        </p>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>

        <!-- Home Button -->
        <div class="home-btn">
            <a href="index.jsp" class="btn btn-primary btn-lg">
                Go to Homepage
            </a>
        </div>

    <%
        } else {
    %>
        <div class="alert alert-warning text-center" role="alert">
            No users found.
        </div>
    <%
        }
    %>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
