<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 50px; background-color: #f4f4f4; }
        .container { max-width: 600px; margin: auto; }
        h2 { color: #333; }
        ul { list-style-type: none; padding: 0; }
        li { margin: 10px 0; }
        a { color: #4CAF50; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<div class="container">
    <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
    <h3>Dashboard</h3>
    <ul>
        <li><a href="manageUsers.jsp">Manage Users</a></li>
    </ul>
</div>
</body>
</html>