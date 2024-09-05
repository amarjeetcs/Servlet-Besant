<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Reset Password</h2>
        <form action="reset-password" method="post">
            <input type="hidden" name="email" value="<%= request.getAttribute("email") %>">
            <div class="form-group">
                <label for="newPassword">New Password:</label>
                <input type="password" name="newPassword" class="form-control" id="newPassword" placeholder="Enter your new password" required>
            </div>
            <button type="submit" class="btn btn-primary">Reset Password</button>
        </form>
    </div>
</body>
</html>
