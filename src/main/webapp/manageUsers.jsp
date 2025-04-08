<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="com.driveschool.model.Student" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Users</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 50px; background-color: #f4f4f4; }
        .container { max-width: 800px; margin: auto; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; background-color: #fff; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #f2f2f2; }
        .form-container { margin-bottom: 20px; }
        input { padding: 8px; margin-right: 10px; }
        button { padding: 8px 15px; background-color: #4CAF50; color: white; border: none; cursor: pointer; }
        button:hover { background-color: #45a049; }
        a { color: #4CAF50; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<div class="container">
    <h2>Manage Users</h2>
    <div class="form-container">
        <form action="SearchUserServlet" method="get">
            <input type="text" name="username" placeholder="Search by username" required>
            <button type="submit">Search</button>
        </form>
    </div>
    <table>
        <tr>
            <th>Username</th>
            <th>User Type</th>
            <th>Actions</th>
        </tr>
        <%
            FileUtil fileUtil = new FileUtil(application);
            List<Student> students = fileUtil.readStudents();
            for (Student student : students) {
        %>
        <tr>
            <td><%= student.getUsername() %></td>
            <td><%= student.getUserType() %></td>
            <td>
                <a href="updateUser.jsp?username=<%= student.getUsername() %>">Update</a>
                <a href="DeleteUserServlet?username=<%= student.getUsername() %>"
                   onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
            </td>
        </tr>
        <% } %>
    </table>
    <p><a href="register.jsp">Add New User</a></p>
    <p><a href="dashboard.jsp">Back to Dashboard</a></p>
</div>
</body>
</html>