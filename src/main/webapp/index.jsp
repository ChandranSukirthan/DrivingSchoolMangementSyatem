<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DriveWise Academy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
        }
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('images/hero-driving.jpg') no-repeat center center/cover;
            color: white;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            flex-direction: column;
        }
        .features {
            padding: 60px 20px;
        }
        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">DriveWise Academy</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="aboutus.jsp">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Register/Login</a></li>
                <li class="nav-item"><a class="nav-link" href="adminDashboard.jsp">Admin</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="hero">
    <h1 class="display-4">Start Your Driving Journey Today</h1>
    <p class="lead">Professional instructors, flexible schedules, and comprehensive learning packages</p>
    <a href="login.jsp" class="btn btn-primary btn-lg">Get Started</a>
</div>

<div class="features text-center bg-light">
    <div class="container">
        <h2 class="mb-5">Why Choose Us?</h2>
        <div class="row">
            <div class="col-md-4">
                <h4>Expert Instructors</h4>
                <p>Learn from certified professionals with years of experience</p>
            </div>
            <div class="col-md-4">
                <h4>Flexible Schedule</h4>
                <p>Book lessons at your convenience</p>
            </div>
            <div class="col-md-4">
                <h4>Custom Packages</h4>
                <p>Choose from Basic, Standard, or Premium packages</p>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
