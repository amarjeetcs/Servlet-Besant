<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD Operation</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            margin-top: 0;
        }
        .header {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .header-text {
            display: inline-block;
            white-space: nowrap;
            font-size: 24px;
            animation: moveText 20s linear infinite;
        }

        @keyframes moveText {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            margin-bottom: 20px;
            color: #343a40;
            text-align: center;
        }
        .btn-primary {
            width: 48%;
            font-size: 16px;
            margin-bottom: 10px;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<!-- Header at the Top -->
<header class="header">
    <span class="header-text">ASR Software Training Institute: India's No.1 Institution for IT and Non-IT Students for Placement, Building Careers with Knowledge, Innovation, and Excellence—Where Quality Matters More Than Quantity</span>
</header>

<!-- Main Form Container -->
<div class="form-container">
    <h2>Add User</h2>
    <form action="add-user" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <div class="mb-3">
            <label for="number" class="form-label">Number</label>
            <input type="text" class="form-control" id="number" name="number" placeholder="Enter your number">
        </div>
        <div class="mb-3">
            <label for="course" class="form-label">Course</label>
            <input type="text" class="form-control" id="course" name="course" placeholder="Enter your course">
        </div>
        <div class="mb-3">
            <label for="state" class="form-label">State</label>
            <input type="text" class="form-control" id="state" name="state" placeholder="Enter your state">
        </div>
        <div class="mb-3">
            <label for="country" class="form-label">Country</label>
            <input type="text" class="form-control" id="country" name="country" placeholder="Enter your country" required>
        </div>
        
        <!-- Single row of links (buttons) -->
        <div class="btn-container">
            <button type="submit" class="btn btn-primary">Add</button>
            <a href="update.jsp" class="btn btn-primary">Update</a>
            <a href="fetch.jsp" class="btn btn-primary">Fetch</a>
            <a href="delete.jsp" class="btn btn-primary">Delete</a>
        </div>
    </form>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 ASR Software Training Institute. All rights reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
