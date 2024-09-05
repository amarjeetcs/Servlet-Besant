<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-success text-white text-center">
    <div class="container mt-5">
        <h2>Registration Successful!</h2>
         <p>Welcome, <%= request.getAttribute("username") %>! Your account has been created.</p>
        <a href="signup.jsp" class="btn btn-light mt-3">Back to Home</a>
    </div>
</body>
</html>
    