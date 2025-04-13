<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Instructor - Driving School</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f4f4; }
        .navbar { background-color: #4CAF50; padding: 15px; text-align: center; }
        .navbar a { color: white; margin: 0 15px; text-decoration: none; font-weight: bold; }
        .navbar a:hover { text-decoration: underline; }
        .add-instructor-container { max-width: 400px; margin: 50px auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #333; }
        input, select { width: 100%; margin: 10px 0; padding: 10px; box-sizing: border-box; }
        input[type="submit"] { background-color: #4CAF50; color: white; border: none; cursor: pointer; }
        input[type="submit"]:hover { background-color: #45a049; }
        a { display: block; text-align: center; margin-top: 10px; color: #4CAF50; text-decoration: none; }
        a:hover { text-decoration: underline; }
        .message { color: white; padding: 10px; margin-bottom: 15px; border-radius: 5px; }
        .success { background-color: #4CAF50; }
        .error { background-color: #f44336; }
    </style>
</head>
<body>
<div class="navbar">
    <a href="adminDashboard.jsp">Home</a>
    <a href="LogoutServlet">Logout</a>
</div>

<div class="add-instructor-container">
    <h2>Add Instructor</h2>

    <!-- Success/Error Message Handling -->
    <%
        String message = (String) request.getAttribute("message");
        String messageType = (String) request.getAttribute("messageType");

        if (message != null) {
    %>
    <div class="message <%= messageType %>">
        <%= message %>
    </div>
    <% } %>

    <form action="AddInstructorServlet" method="post">
        Name: <input type="text" name="name" required><br>
        Contact: <input type="text" name="contact" required><br>
        Availability:
        <select name="availability">
            <option value="Available">Available</option>
            <option value="Unavailable">Unavailable</option>
        </select><br>
        Experience (Years): <input type="number" name="experience" required><br>
        <input type="submit" value="Add Instructor">
    </form>

    <a href="viewInstructors.jsp">View All Instructors</a>
    <a href="dashboard.jsp">Back to Dashboard</a>
</div>

</body>
</html>
