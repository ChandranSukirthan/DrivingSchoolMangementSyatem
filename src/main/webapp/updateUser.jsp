<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="com.driveschool.model.Student" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update User - Driving School</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f4f4; }
        .navbar { background-color: #4CAF50; padding: 15px; text-align: center; }
        .navbar a { color: white; margin: 0 15px; text-decoration: none; font-weight: bold; }
        .navbar a:hover { text-decoration: underline; }
        .update-container { max-width: 400px; margin: 50px auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #333; }
        input, select { width: 100%; margin: 10px 0; padding: 10px; box-sizing: border-box; }
        input[type="submit"] { background-color: #4CAF50; color: white; border: none; cursor: pointer; }
        input[type="submit"]:hover { background-color: #45a049; }
        a { display: block; text-align: center; margin-top: 10px; color: #4CAF50; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<div class="navbar">
    <a href="adminDashboard.">Home</a>
    <a href="manageUsers.jsp">Manage Users</a>
    <a href="addInstructor.jsp">Add Instructor</a>
    <a href="viewInstructors.jsp">View Instructors</a>
    <a href="viewLessonRequests.jsp">Lesson Requests</a>
    <a href="AdminLogoutServlet">Logout</a>
</div>
<div class="update-container">
    <h2>Update User</h2>
    <%
        String username = request.getParameter("username");
        FileUtil fileUtil = new FileUtil(application);
        List<Student> students = fileUtil.readStudents();
        Student studentToUpdate = null;
        for (Student student : students) {
            if (student.getUsername().equals(username)) {
                studentToUpdate = student;
                break;
            }
        }
        if (studentToUpdate != null) {
    %>
    <form action="UpdateUserServlet" method="post">
        <input type="hidden" name="username" value="<%= studentToUpdate.getUsername() %>">
        Password: <input type="password" name="password" value="<%= studentToUpdate.getPassword() %>" required><br>
        User Type:
        <select name="userType">
            <option value="Basic" <%= studentToUpdate.getUserType().equals("Basic") ? "selected" : "" %>>Normal</option>
            <option value="Standard" <%= studentToUpdate.getUserType().equals("Standard") ? "selected" : "" %>>Standard</option>
            <option value="Premium" <%= studentToUpdate.getUserType().equals("Premium") ? "selected" : "" %>>Premium</option>
        </select><br>
        <input type="submit" value="Update User">
    </form>
    <% } else { %>
    <p>User not found!</p>
    <% } %>
    <a href="manageUsers.jsp">Back to Manage Users</a>
</div>
</body>
</html>