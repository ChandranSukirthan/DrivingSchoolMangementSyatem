<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Driving School</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f4f4; }
        .navbar { background-color: #4CAF50; padding: 15px; text-align: center; }
        .navbar a { color: white; margin: 0 15px; text-decoration: none; font-weight: bold; }
        .navbar a:hover { text-decoration: underline; }
        .container { max-width: 800px; margin: 50px auto; padding: 20px; background-color: #fff; border-radius: 5px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { color: #333; text-align: center; }
        ul { list-style-type: none; padding: 0; text-align: center; }
        li { margin: 15px 0; }
        a { color: #4CAF50; text-decoration: none; font-size: 18px; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<div class="navbar">
    <a href="dashboard.jsp">Home</a>
    <a href="manageUsers.jsp">Manage Users</a>
    <a href="addInstructor.jsp">Add Instructor</a>
    <a href="viewInstructors.jsp">View Instructors</a>
    <a href="scheduleLesson.jsp">Schedule Lesson</a>
    <a href="viewLessonRequests.jsp">Lesson Requests</a>
    <a href="viewStudentLessons.jsp">My Lessons</a>
    <a href="LogoutServlet">Logout</a>
</div>
<div class="container">
    <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
    <h3>Dashboard</h3>
    <ul>
        <li><a href="manageUsers.jsp">Manage Users</a></li>
        <li><a href="addInstructor.jsp">Add Instructor</a></li>
        <li><a href="viewInstructors.jsp">View Instructors</a></li>
        <li><a href="scheduleLesson.jsp">Schedule a Lesson</a></li>
        <li><a href="viewLessonRequests.jsp">View Lesson Requests</a></li>
        <li><a href="viewStudentLessons.jsp">View My Lessons</a></li>
    </ul>
</div>
</body>
</html>