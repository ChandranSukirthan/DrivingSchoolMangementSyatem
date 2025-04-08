<%--
  Created by IntelliJ IDEA.
  User: sukir
  Date: 4/8/2025
  Time: 3:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 50px; }
        form { max-width: 300px; padding: 20px; border: 1px solid #ccc; border-radius: 5px; }
        input { width: 100%; margin: 10px 0; padding: 5px; }
        input[type="submit"] { background-color: #4CAF50; color: white; cursor: pointer; }
        .error { color: red; }
    </style>
</head>
<body>
<h2>Student Login</h2>
<form action="LoginServlet" method="post">
    Username: <input type="text" name="username" required><br>
    Password: <input type="password" name="password" required><br>
    <input type="submit" value="Login">
</form>
<% if (request.getParameter("error") != null) { %>
<p class="error"><%= request.getParameter("error") %></p>
<% } %>
<p><a href="register.jsp">New user? Register here</a></p>
</body>
</html>
