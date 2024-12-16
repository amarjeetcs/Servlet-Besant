<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fetch User</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            max-width: 600px; /* Fixed width for the form */
            margin: 0 auto; /* Center the form horizontally */
        }

        .btn-container {
            display: flex;
            justify-content: center;
            gap: 10px; /* Space between buttons */
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Fetch User Details</h2>
    
    <!-- Form to fetch by User ID -->
    <form action="fetch-user" method="post" class="mb-4" id="fetchUserForm">
        <div class="mb-3">
            <label for="userId" class="form-label">User ID</label>
            <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter User ID to fetch details" required>
        </div>
        
        <!-- Button Container with both Fetch buttons side by side -->
        <div class="btn-container">
            <button type="submit" class="btn btn-primary">Fetch</button>
            <button type="button" class="btn btn-primary" id="fetchAllBtn">Fetch All</button>
        </div>
    </form>

<!-- JavaScript to handle Fetch All button -->
<script>
    document.getElementById('fetchAllBtn').addEventListener('click', function() {
        document.getElementById('userId').value = ''; // Clear the userId field
        document.getElementById('fetchUserForm').action = 'fetch-all-users'; // Change form action to fetch all users
        document.getElementById('fetchUserForm').submit(); // Submit the form
    });
</script>

</body>
</html>
