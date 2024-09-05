<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Addition Form</title>
</head>
<body>
    <h2>Addition of Two Numbers</h2>
    <form action="add" method="post">
        <label for="num1">Number 1:</label>
        <input type="number" name="num1" id="num1" required>
        <br><br>
        <label for="num2">Number 2:</label>
        <input type="number" name="num2" id="num2" required>
        <br><br>
        <input type="submit" value="Add">
    </form>
</body>
</html>
