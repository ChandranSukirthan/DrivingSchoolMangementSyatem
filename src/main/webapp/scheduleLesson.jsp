<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="com.driveschool.model.Instructor" %>
<%@ page import="java.util.List" %>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Schedule Lesson - Driving School</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f4f4; }
        .navbar { background-color: #4CAF50; padding: 15px; text-align: center; }
        .navbar a { color: white; margin: 0 15px; text-decoration: none; font-weight: bold; }
        .navbar a:hover { text-decoration: underline; }
        .schedule-container { max-width: 400px; margin: 50px auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
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
    <a href="dashboard.jsp">Home</a>
    <a href="manageUsers.jsp">Manage Users</a>
    <a href="addInstructor.jsp">Add Instructor</a>
    <a href="viewInstructors.jsp">View Instructors</a>
    <a href="scheduleLesson.jsp">Schedule Lesson</a>
    <a href="viewLessonRequests.jsp">Lesson Requests</a>
    <a href="viewStudentLessons.jsp">My Lessons</a>
    <a href="LogoutServlet">Logout</a>
</div>
<div class="schedule-container">
    <h2>Schedule a Driving Lesson</h2>
    <form action="ScheduleLessonServlet" method="post">
        <input type="hidden" name="studentUsername" value="<%= session.getAttribute("username") %>">
        Instructor:
        <select name="instructorName" required>
            <%
                FileUtil fileUtil = new FileUtil(application);
                List<Instructor> instructors = fileUtil.readInstructors();
                for (Instructor instructor : instructors) {
                    if (instructor.getAvailability().equals("Available")) {
            %>
            <option value="<%= instructor.getName() %>"><%= instructor.getName() %> (Experience: <%= instructor.getExperience() %> years)</option>
            <% } } %>
        </select><br>
        Date: <input type="date" name="date" required><br>
        <input type="submit" value="Schedule Lesson">
    </form>
    <a href="dashboard.jsp">Back to Dashboard</a>
</div>
</body>
</html>