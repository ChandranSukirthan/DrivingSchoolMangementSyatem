<%--
  Created by IntelliJ IDEA.
  User: sukir
  Date: 4/8/2025
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 50px; background-color: #f4f4f4; }
        .register-container { max-width: 400px; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #333; }
        input, select { width: 100%; margin: 10px 0; padding: 10px; box-sizing: border-box; }
        input[type="submit"] { background-color: #4CAF50; color: white; border: none; cursor: pointer; }
        input[type="submit"]:hover { background-color: #45a049; }
        a { display: block; text-align: center; margin-top: 10px; color: #4CAF50; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<div class="register-container">
    <h2>Student Registration</h2>
    <form action="RegisterServlet" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        User Type:
        <select name="userType">
            <option value="normal">Normal</option>
            <option value="premium">Premium</option>
        </select><br>
        <input type="submit" value="Register">
    </form>
    <a href="login.jsp">Already registered? Login here</a>
</div>
</body>
</html>