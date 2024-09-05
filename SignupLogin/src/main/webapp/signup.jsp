<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Signup Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background:
		url('https://images.unsplash.com/photo-1517248135467-4c7edcad34c4')
		no-repeat center center fixed;
	background-size: cover;
	font-family: Arial, sans-serif;
	color: #ffffff;
}

.card {
	border-radius: 15px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
	background-color: rgba(0, 0, 0, 0.7);
	color: #ffffff;
}

.card-header {
	background-color: #007bff;
	color: white;
	border-top-left-radius: 15px;
	border-top-right-radius: 15px;
}

.btn-primary, .btn-secondary {
	transition: background-color 0.3s ease;
	margin-top: 10px;
}

.btn-primary:hover {
	background-color: #0056b3;
}

.btn-secondary:hover {
	background-color: #343a40;
}

.btn-link {
	color: #007bff;
	text-decoration: none;
	margin-top: 10px;
}

.btn-link:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<%
	String errorMessage = (String) request.getAttribute("errorMessage");
	if (errorMessage != null) {
	%>
	<div class="alert alert-danger text-center"><%=errorMessage%></div>
	<%
	}
	%>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-center">
						<h2>Signup Form</h2>
					</div>
					<div class="card-body">
						<!-- Display error message if it exists -->


						<form action="signup" method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									name="username" class="form-control" id="username"
									placeholder="Enter your username" required>
							</div>
							<div class="form-group">
								<label for="email">Email:</label> <input type="email"
									name="email" class="form-control" id="email"
									placeholder="Enter your email" required>
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									name="password" class="form-control" id="password"
									placeholder="Enter your password" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Signup</button>
						</form>

						<div class="text-center">
							<a href="login.jsp" class="btn btn-secondary btn-block">Login</a>
							<a href="forgot-username.jsp" class="btn btn-link">Forgot
								Username?</a> <a href="forgot-password.jsp" class="btn btn-link">Forgot
								Password?</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
