<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

.login-container {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	border-radius: 8px;
	background-color: #ffffff;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.login-header {
	margin-bottom: 30px;
	text-align: center;
}

.login-header h2 {
	font-size: 2rem;
	color: #007bff;
}

.form-group {
	margin-bottom: 20px;
}

.btn-primary {
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
}

.btn-primary:hover {
	background-color: #0056b3;
}

.alert {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="login-container mt-5">
		<div class="login-header">
			<h2>Login</h2>
		</div>

		<!-- Display success or error message -->
		<%
		String successMessage = (String) request.getAttribute("successMessage");
		String errorMessage = (String) request.getAttribute("errorMessage");
		if (successMessage != null) {
		%>
		<div class="alert alert-success"><%=successMessage%></div>
		<%
		} else if (errorMessage != null) {
		%>
		<div class="alert alert-danger"><%=errorMessage%></div>
		<%
		}
		%>

		<form action="login" method="post">
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" name="email"
					class="form-control" id="email" placeholder="Enter your email"
					required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					name="password" class="form-control" id="password"
					placeholder="Enter your password" required>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Login</button>
			</div>
		</form>
	</div>

	<!-- Bootstrap JS (optional) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
