<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.amarjeet.crud.model.Student" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fetch User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 24px;
            font-weight: bold;
        }

        .card-body {
            font-size: 18px;
            color: #333;
        }

        .card-body p {
            margin: 10px 0;
        }

        .error-message {
            color: red;
            font-weight: bold;
            text-align: center;
        }

        .success-message {
            color: green;
            font-weight: bold;
            text-align: center;
        }

        .text-center {
            text-align: center;
        }

        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1 class="text-center my-4">Fetch User by ID</h1>

        <%-- Display the user details if available --%>
        <%
            Student user = (Student) request.getAttribute("user");
            if (user != null) {
        %>
            <div class="card">
                <div class="card-header">
                    User Details
                </div>
                <div class="card-body">
                    <p><strong>ID:</strong> <%= user.getId() %></p>
                    <p><strong>Name:</strong> <%= user.getName() %></p>
                    <p><strong>Email:</strong> <%= user.getEmail() %></p>
                    <p><strong>Number:</strong> <%= user.getNumber() %></p>
                    <p><strong>Course:</strong> <%= user.getCourse() %></p>
                    <p><strong>State:</strong> <%= user.getState() %></p>
                    <p><strong>Country:</strong> <%= user.getCountry() %></p>
                </div>
            </div>
        <%
            } else {
        %>
            <div class="error-message">
                <p>No user found with the given ID.</p>
            </div>
        <%
            }

            // Display error message if any
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
            <div class="error-message">
                <p><%= error %></p>
            </div>
        <%
            }
        %>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
