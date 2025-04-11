<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Driving School</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome (for icons, consistent with previous pages) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #4CAF50; /* Your green color */
            --light-color: #f8f9fa;
        }

        body {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1592740370664-2bff88666800?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80');
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

        .dashboard-card h3 {
            color: #333;
            font-size: 1.5rem;
            margin-bottom: 2rem;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .card {
            background: white;
            border: none;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-body {
            padding: 1.5rem;
            text-align: center;
        }

        .card-title {
            color: var(--primary-color);
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .card-link {
            color: var(--primary-color);
            text-decoration: none;
            font-size: 1rem;
            font-weight: 500;
        }

        .card-link:hover {
            text-decoration: underline;
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

            .card-grid {
                grid-template-columns: 1fr;
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
                    <a class="nav-link active" href="dashboard.jsp">Home</a>
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
                    <a class="nav-link" href="scheduleLesson.jsp">Schedule Lesson</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewLessonRequests.jsp">Lesson Requests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewStudentLessons.jsp">My Lessons</a>
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

<!-- Dashboard Content -->
<div class="container">
    <div class="dashboard-card">
        <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
        <h3>Dashboard</h3>
        <div class="card-grid">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Manage Users</h5>
                    <a href="manageUsers.jsp" class="card-link">Go to Users</a>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Add Instructor</h5>
                    <a href="addInstructor.jsp" class="card-link">Add New Instructor</a>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View Instructors</h5>
                    <a href="viewInstructors.jsp" class="card-link">See All Instructors</a>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Schedule a Lesson</h5>
                    <a href="scheduleLesson.jsp" class="card-link">Book a Lesson</a>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View Lesson Requests</h5>
                    <a href="viewLessonRequests.jsp" class="card-link">Check Requests</a>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View My Lessons</h5>
                    <a href="viewStudentLessons.jsp" class="card-link">See My Lessons</a>
                </div>
            </div>
        </div>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>