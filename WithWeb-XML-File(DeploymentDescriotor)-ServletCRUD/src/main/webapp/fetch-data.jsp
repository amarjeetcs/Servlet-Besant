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
        table {
            margin-top: 20px;
        }
        th, td {
            text-align: center;
        }
        .table-striped tbody tr:nth-child(odd) {
            background-color: #f1f1f1;
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
        <table class="table table-striped table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Number</th>
                    <th>Course</th>
                    <th>State</th>
                    <th>Country</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Student user : userList) {
                %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getNumber() %></td>
                    <td><%= user.getCourse() %></td>
                    <td><%= user.getState() %></td>
                    <td><%= user.getCountry() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
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
