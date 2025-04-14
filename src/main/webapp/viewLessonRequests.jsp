<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="java.net.URLEncoder" %>

<%
    // Prevent caching to force refresh after Accept/Reject
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lesson Requests - Driving School</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS & Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #4CAF50;
            --danger-color: #f44336;
        }
        body {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
            url('https://images.unsplash.com/photo-1592740370664-2bff88666800?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-attachment: fixed;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar { background-color: var(--primary-color); }
        .navbar-brand, .nav-link { color: white !important; font-weight: 500; }
        .nav-link:hover { text-decoration: underline; }
        .container { max-width: 900px; margin-top: 3rem; }
        .dashboard-card {
            background: rgba(255, 255, 255, 0.95);
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }
        table { width: 100%; margin-top: 1.5rem; border-collapse: collapse; }
        th, td { padding: 0.75rem; border: 1px solid #ccc; text-align: left; }
        th { background-color: var(--primary-color); color: white; }
        .btn-action { padding: 0.4rem 0.8rem; border-radius: 4px; font-weight: 500; text-decoration: none; margin-right: 0.5rem; }
        .btn-accept { background-color: var(--primary-color); color: white; }
        .btn-accept:hover { background-color: #45a049; }
        .btn-reject { background-color: var(--danger-color); color: white; }
        .btn-reject:hover { background-color: #d32f2f; }
        .btn-back { margin-top: 1.5rem; padding: 0.5rem 1rem; background-color: var(--primary-color); color: white; text-decoration: none; border-radius: 5px; }
        footer { background-color: var(--primary-color); color: white; padding: 1.5rem 0; margin-top: 3rem; }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">DriveWise Academy</a>
        <div class="d-none d-md-flex gap-4">
            <a href="adminDashboard.jsp" class="nav-link">Home</a>
            <a href="manageUsers.jsp" class="nav-link">Manage Users</a>
            <a href="addInstructor.jsp" class="nav-link">Add Instructor</a>
            <a href="viewInstructors.jsp" class="nav-link">View Instructors</a>
            <a href="viewLessonRequests.jsp" class="nav-link fw-bold text-warning">Lesson Requests</a>
            <a href="adminLogoutServlet" class="nav-link">Logout</a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <div class="dashboard-card">
        <h2 class="mb-4">Lesson Request Queue</h2>

        <!-- Success/Error Alerts -->
        <%
            String success = (String) session.getAttribute("success");
            String error = (String) session.getAttribute("error");
            if (success != null) {
        %>
        <div class="alert alert-success"><%= success %></div>
        <%
                session.removeAttribute("success");
            }
            if (error != null) {
        %>
        <div class="alert alert-danger"><%= error %></div>
        <%
                session.removeAttribute("error");
            }
        %>

        <!-- Table of Requests -->
        <table>
            <thead>
            <tr>
                <th>Student</th>
                <th>Instructor</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <%
                try {
                    FileUtil fileUtil = new FileUtil(application);
                    List<String> requests = fileUtil.readLessonRequests();
                    if (requests.isEmpty()) {
            %>
            <tr>
                <td colspan="4" style="text-align: center;">No lesson requests found.</td>
            </tr>
            <%
            } else {
                for (String lessonRequest : requests) {
                    String[] data = lessonRequest.split(",");
                    if (data.length >= 3) {
                        String student = data[0].trim();
                        String instructor = data[1].trim();
                        String date = data[2].trim();
                        String encodedRequest = URLEncoder.encode(lessonRequest, "UTF-8");
            %>
            <tr>
                <td><%= student %></td>
                <td><%= instructor %></td>
                <td><%= date %></td>
                <td>
                    <a href="AcceptLessonRequestServlet?request=<%= encodedRequest %>"
                       class="btn-action btn-accept"
                       onclick="return confirm('Are you sure you want to accept this lesson request?')">
                        <i class="fas fa-check"></i> Accept
                    </a>
                    <a href="RejectLessonRequestServlet?request=<%= encodedRequest %>"
                       class="btn-action btn-reject"
                       onclick="return confirm('Are you sure you want to reject this lesson request?')">
                        <i class="fas fa-times"></i> Reject
                    </a>
                </td>
            </tr>
            <%
                        }
                    }
                }
            } catch (Exception e) {
            %>
            <tr>
                <td colspan="4" style="color: red; text-align: center;">Error: <%= e.getMessage() %></td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>

        <!-- Back Button -->
        <a href="adminDashboard.jsp" class="btn-back">Back to Admin Dashboard</a>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="container text-center">
        <h5>Driving School</h5>
        <p>Empowering safe and confident drivers.</p>
        <p class="mt-2">© 2025 Driving School. All rights reserved.</p>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
