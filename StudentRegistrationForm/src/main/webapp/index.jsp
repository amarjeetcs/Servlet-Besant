<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Student Registration</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-light">
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header text-center">
						<h2>Student Registration</h2>
					</div>
					<div class="card-body">
						<form action="register" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="name">Name:</label> <input type="text" name="name"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="father_name">Father's Name:</label> <input
									type="text" name="father_name" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="mother_name">Mother's Name:</label> <input
									type="text" name="mother_name" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="phone_number">Phone Number:</label> <input
									type="text" name="phone_number" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="email">Email:</label> <input type="email"
									name="email" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="gender">Gender:</label> <select name="gender"
									class="form-control" required>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									<option value="Other">Other</option>
								</select>
							</div>
							<div class="form-group">
								<label for="dob">Date of Birth:</label> <input type="date"
									name="dob" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="address">Address:</label>
								<textarea name="address" class="form-control" rows="3" required></textarea>
							</div>
							<div class="form-group">
								<label for="blood_group">Blood Group:</label> <input type="text"
									name="blood_group" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="college_name">College Name:</label> <input
									type="text" name="college_name" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="year_of_passout">Year of Passout:</label> <input
									type="number" name="year_of_passout" class="form-control"
									required>
							</div>
							<div class="form-group">
								<label for="qualification">Qualification:</label> <input
									type="text" name="qualification" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="course">Course:</label> <input type="text"
									name="course" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="pic">Picture:</label> <input type="file" name="pic"
									class="form-control-file" accept="image/*">
							</div>
							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</form>
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
>
