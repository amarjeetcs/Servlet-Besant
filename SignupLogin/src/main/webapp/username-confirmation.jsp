<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Username Recovery</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="alert alert-success">
            <strong>Your Username:</strong> <%= request.getAttribute("username") %>
        </div>
        <a href="login.jsp" class="btn btn-primary">Go to Login</a>
    </div>
</body>
</html>
