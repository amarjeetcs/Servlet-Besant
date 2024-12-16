<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User</title>
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
    <h2 class="text-center">Delete User</h2>
    
    <!-- Form to delete by ID -->
    <form action="delete-user-by-id" method="post" class="mb-4">
        <div class="mb-3">
            <label for="userId" class="form-label">User ID</label>
            <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter User ID to delete" required>
        </div>
        <button type="submit" class="btn btn-danger">Delete By ID</button>
    </form>
    
    <!-- Form to delete all users -->
    <form action="delete-all-users" method="post">
        <button type="submit" class="btn btn-danger">Delete All Users</button>
    </form>
</div>

</body>
</html>
