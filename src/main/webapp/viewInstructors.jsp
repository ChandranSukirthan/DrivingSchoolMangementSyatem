<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="com.driveschool.model.Instructor" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Instructors - Driving School</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f4f4; }
        .navbar { background-color: #4CAF50; padding: 15px; text-align: center; }
        .navbar a { color: white; margin: 0 15px; text-decoration: none; font-weight: bold; }
        .navbar a:hover { text-decoration: underline; }
        .container { max-width: 800px; margin: 50px auto; padding: 20px; background-color: #fff; border-radius: 5px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { color: #333; text-align: center; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #f2f2f2; }
        a { color: #4CAF50; text-decoration: none; }
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
    <a href="LogoutServlet">Logout</a>
</div>
<div class="container">
    <h2>Instructor List (Sorted by Experience)</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Contact</th>
            <th>Availability</th>
            <th>Experience (Years)</th>
        </tr>
        <%
            FileUtil fileUtil = new FileUtil(application);
            List<Instructor> instructors = new ArrayList<>(fileUtil.readInstructors());

            // Bubble Sort by experience (descending order)
            for (int i = 0; i < instructors.size() - 1; i++) {
                for (int j = 0; j < instructors.size() - i - 1; j++) {
                    if (instructors.get(j).getExperience() < instructors.get(j + 1).getExperience()) {
                        Instructor temp = instructors.get(j);
                        instructors.set(j, instructors.get(j + 1));
                        instructors.set(j + 1, temp);
                    }
                }
            }

            for (Instructor instructor : instructors) {
        %>
        <tr>
            <td><%= instructor.getName() %></td>
            <td><%= instructor.getContact() %></td>
            <td><%= instructor.getAvailability() %></td>
            <td><%= instructor.getExperience() %></td>
        </tr>
        <% } %>
    </table>
    <p style="text-align: center;"><a href="addInstructor.jsp">Add New Instructor</a></p>
    <p style="text-align: center;"><a href="dashboard.jsp">Back to Dashboard</a></p>
</div>
</body>
</html>