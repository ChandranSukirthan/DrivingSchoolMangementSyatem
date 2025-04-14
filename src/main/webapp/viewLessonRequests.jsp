<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lesson Requests - Driving School</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous">
    <style>
        :root {
            --primary-color: #4CAF50;
            --light-color: #f8f9fa;
        }

        body {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1592740370664-2bff88666800?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
        }

        .navbar {
            background-color: var(--primary-color);
        }

        .navbar-brand {
            font-weight: 700;
            color: white !important;
        }

        .nav-link {
            color: white !important;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: var(--light-color) !important;
            text-decoration: underline;
        }

        .container {
            max-width: 900px;
            margin: 3rem auto;
            padding: 2rem;
        }

        .dashboard-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            text-align: center;
        }

        .dashboard-card h2 {
            color: var(--primary-color);
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5rem;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 0.75rem;
            text-align: left;
        }

        th {
            background-color: var(--primary-color);
            color: white;
            font-weight: 600;
        }

        td {
            background-color: white;
        }

        .action-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }

        .action-link:hover {
            text-decoration: underline;
        }

        .btn-back {
            display: inline-block;
            margin-top: 1.5rem;
            padding: 0.5rem 1rem;
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 500;
        }

        .btn-back:hover {
            background-color: #45a049;
        }

        footer {
            background-color: var(--primary-color);
            color: white;
            padding: 1.5rem 0;
            margin-top: 3rem;
        }

        footer h5 {
            font-weight: 700;
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }

        @media (max-width: 768px) {
            .container {
                padding: 1rem;
            }

            .dashboard-card {
                padding: 1.5rem;
            }

            .dashboard-card h2 {
                font-size: 1.75rem;
            }
        }
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">Driving School</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="dashboard.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="manageUsers.jsp">Manage Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addInstructor.jsp">Add Instructor</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewInstructors.jsp">View Instructors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="viewLessonRequests.jsp">Lesson Requests</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="LogoutServlet">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Lesson Requests Content -->
<div class="container">
    <div class="dashboard-card">
        <h2>Lesson Request Queue</h2>
        <table>
            <thead>
            <tr>
                <th>Student</th>
                <th>Instructor</th>
                <th>Date</th>
                <th>Action</th>
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
                for (String lessonRequest : requests) { // Renamed 'request' to 'lessonRequest'
                    String[] data = lessonRequest.split(",");
                    if (data.length >= 3) { // Ensure data has enough fields
            %>
            <tr>
                <td><%= data[0] %></td>
                <td><%= data[1] %></td>
                <td><%= data[2] %></td>
                <td>
                    <a href="ProcessLessonRequestServlet?request=<%= java.net.URLEncoder.encode(lessonRequest, "UTF-8") %>" class="action-link">Process</a>
                </td>
            </tr>
            <%
                        }
                    }
                }
            } catch (Exception e) {
            %>
            <tr>
                <td colspan="4" style="text-align: center; color: red;">Error loading requests: <%= e.getMessage() %></td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
        <a href="adminDashboard.jsp" class="btn-back">Back to Admin Dashboard</a>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h5>Driving School</h5>
                <p>Empowering safe and confident drivers.</p>
            </div>
            <div class="col-md-6 text-md-end">
                <p>© 2025 Driving School. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>