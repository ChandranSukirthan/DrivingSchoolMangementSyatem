<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Instructor - Driving School</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Orbitron', sans-serif;
            background-color: #121212;
            color: white;
            margin: 0;
        }

        .navbar {
            background-color: #000;
            padding: 15px;
            box-shadow: 0 4px 6px rgba(255, 0, 0, 0.3);
        }

        .navbar a {
            color: #ff0000;
            margin: 0 15px;
            font-weight: bold;
            text-decoration: none;
        }

        .navbar a:hover {
            color: #ffffff;
            text-decoration: underline;
        }

        .form-container {
            max-width: 500px;
            margin: 60px auto;
            background-color: #1e1e1e;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(255, 0, 0, 0.3);
        }

        h2 {
            color: #ff0000;
            text-align: center;
            margin-bottom: 25px;
        }

        .form-control, .form-select {
            background-color: #2c2c2c;
            color: white;
            border: 1px solid #ff0000;
        }

        .form-control::placeholder {
            color: #ccc;
        }

        .form-control:focus, .form-select:focus {
            border-color: #ff0000;
            box-shadow: 0 0 5px #ff0000;
        }

        .btn-custom {
            background-color: #ff0000;
            border: none;
        }

        .btn-custom:hover {
            background-color: #cc0000;
        }

        .message {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 8px;
            text-align: center;
        }

        .success {
            background-color: #28a745;
            color: #fff;
        }

        .error {
            background-color: #dc3545;
            color: #fff;
        }

        .form-footer a {
            color: #ff5555;
            text-decoration: none;
        }

        .form-footer a:hover {
            text-decoration: underline;
            color: #ff9999;
        }
    </style>
</head>
<body>

<div class="navbar text-center">
    <a href="adminDashboard.jsp">Home</a>
    <a href="LogoutServlet">Logout</a>
</div>

<div class="form-container">
    <h2>Add Instructor</h2>

    <!-- Display Success/Error Message -->
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
        <div class="mb-3">
            <input type="text" name="name" class="form-control" placeholder="Instructor Name" required>
        </div>
        <div class="mb-3">
            <input type="text" name="contact" class="form-control" placeholder="Contact Number" required>
        </div>
        <div class="mb-3">
            <select name="availability" class="form-select" required>
                <option value="Available">Available</option>
                <option value="Unavailable">Unavailable</option>
            </select>
        </div>
        <div class="mb-3">
            <input type="number" name="experience" class="form-control" placeholder="Experience (Years)" required>
        </div>
        <button type="submit" class="btn btn-custom w-100">Add Instructor</button>
    </form>

    <div class="form-footer mt-4 text-center">
        <div class="hidden md:flex items-center space-x-4">
            <a href="adminDashboard.jsp" class="bg-yellow-500 text-black px-3 py-2 rounded-md text-sm font-semibold hover:bg-yellow-600">Home</a>
            <a href="manageUsers.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">Manage Users</a>
            <a href="addInstructor.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">Add Instructor</a>
            <a href="viewInstructors.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">View Instructors</a>
            <a href="viewLessonRequests.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">Lesson Requests</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
