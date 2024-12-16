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
    <form action="fetch-user" method="post" class="mb-4">
        <div class="mb-3">
            <label for="userId" class="form-label">User ID</label>
            <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter User ID to fetch details" required>
        </div>
        
        <!-- Button Container with both Fetch buttons side by side -->
        <div class="btn-container">
            <button type="submit" class="btn btn-primary">Fetch</button>
            <form action="fetch-all-users" method="post">
                <button type="submit" class="btn btn-primary">Fetch All</button>
            </form>
        </div>
    </form>

    <!-- Placeholder for displaying user details -->
    <div class="mt-4">
        <h4>User Details</h4>
        <div id="userDetails">
            <table class="table table-striped table-hover table-bordered">
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
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.number}</td>
                            <td>${user.course}</td>
                            <td>${user.state}</td>
                            <td>${user.country}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
