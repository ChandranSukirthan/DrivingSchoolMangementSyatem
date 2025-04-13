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
            margin: 0;
            padding: 0;
            background-color: black;
        }

        /* Navbar text color fix */
        .navbar-nav .nav-link,
        .navbar-brand {
            color: white !important;
        }

        .navbar-nav .nav-link:hover,
        .navbar-brand:hover {
            color: #e43e31 !important;
        }

        /* Hero section */
        .hero {
            background: linear-gradient(to bottom right, rgba(0,0,0,0.6), rgba(0,0,0,0.4)),
            url('https://images.unsplash.com/photo-1503376780353-7e6692767b70') no-repeat center center/cover;
            color: #fff;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            flex-direction: column;
            padding: 0 15px;
            box-shadow: inset 0 0 50px rgba(0,0,0,0.4);
            opacity: 0;
            animation: fadeIn 2s 1s forwards, zoomOut 4s ease-in-out forwards;
        }

        @keyframes zoomOut {
            from {
                transform: scale(1.5);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .animate-typing {
            font-family: 'Courier New', Courier, monospace;
            white-space: nowrap;
            overflow: hidden;
            border-right: 4px solid;
            width: 0;
            animation: typing 3s steps(30) 1s forwards, blink 0.75s step-end infinite;
            display: inline-block;
        }

        @keyframes typing {
            from { width: 0; }
            to { width: 100%; }
        }

        @keyframes blink {
            50% { border-color: transparent; }
        }

        .hero h1 {
            font-size: 3.5rem;
            font-weight: 700;
            color: #fff;
        }

        .hero p {
            font-size: 1.25rem;
            margin-bottom: 30px;
            opacity: 0;
            animation: fadeInUp 1.5s 5s forwards;
            color: #fff;
        }

        .btn-primary {
            background-color: #1e1f22;
            border: none;
            color: #e43e31;
            padding: 12px 28px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #f7c645;
            color: white;
        }

        .features {
            padding: 60px 20px;
            opacity: 0;
            transform: translateY(30px);
            transition: all 1s ease-out;
            animation: fadeIn 2s 6s forwards;
        }

        .features h2 {
            font-weight: bold;
            margin-bottom: 40px;
            color: #333;
        }

        .features h4 {
            font-weight: 600;
            color: #555;
        }

        .features p {
            color: #777;
        }

        .feature-item {
            opacity: 0;
            transform: translateX(-30px);
            transition: all 0.5s ease;
        }

        .feature-item.visible {
            opacity: 1;
            transform: translateX(0);
        }

        @keyframes fadeInUp {
            from {opacity: 0; transform: translateY(30px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="#">DriveWise Academy</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">🏠︎ Home</a></li>
                <li class="nav-item"><a class="nav-link" href="aboutus.jsp">ⓘ About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.jsp">☎ Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">⏻ Register/Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="hero">
    <h1 class="display-4 animate-typing">Start Your Driving Journey Today</h1>
    <p class="lead">Professional instructors, flexible schedules, and comprehensive learning packages</p>
    <a href="login.jsp" class="btn btn-primary btn-lg">Get Started</a>
</div>

<!-- Features Section -->
<style>
    .jump-hover {
        transition: transform 0.3s ease;
    }

    .jump-hover:hover {
        transform: translateY(-10px);
    }
</style>

<div class="py-5 bg-white">
    <div class="container text-center">
        <h2 class="mb-4 fw-bold">Why Choose Us?</h2>
        <p class="mb-5 text-muted">We provide the best driving education experience</p>

        <div class="row g-4">
            <!-- Card 1 -->
            <div class="col-md-4">
                <div class="bg-light rounded shadow-sm text-center p-5 h-100 jump-hover">
                    <div class="d-flex justify-content-center align-items-center mb-3" style="height: 60px;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="white" class="bi bi-person-check-fill bg-danger p-2 rounded-circle" viewBox="0 0 16 16">
                            <path d="M15.854 5.146a.5.5 0 0 0-.708-.708l-3 3-.647-.646a.5.5 0 0 0-.708.708l1 1a.5.5 0 0 0 .708 0l3.5-3.5z"/>
                            <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                        </svg>
                    </div>
                    <h5 class="fw-bold">Expert Instructors</h5>
                    <p class="text-muted">Learn from certified professionals with years of experience</p>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-md-4">
                <div class="bg-light rounded shadow-sm text-center p-5 h-100 jump-hover">
                    <div class="d-flex justify-content-center align-items-center mb-3" style="height: 60px;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="white" class="bi bi-clock-fill bg-danger p-2 rounded-circle" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM7.5 4a.5.5 0 0 0-1 0v4a.5.5 0 0 0 .25.43l3 1.5a.5.5 0 1 0 .5-.86L7.5 7.7V4z"/>
                        </svg>
                    </div>
                    <h5 class="fw-bold">Flexible Schedule</h5>
                    <p class="text-muted">Book lessons at your convenience</p>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-md-4">
                <div class="bg-light rounded shadow-sm text-center p-5 h-100 jump-hover">
                    <div class="d-flex justify-content-center align-items-center mb-3" style="height: 60px;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="white" class="bi bi-box-seam-fill bg-danger p-2 rounded-circle" viewBox="0 0 16 16">
                            <path d="M0.5 3.5v8.661l6.857 3.429V6.95L0.5 3.5zM8.643 15.59 15.5 12.16V3.5l-6.857 3.45v8.64zM1.07 2.788 8 6.5l6.93-3.712L8 0 .07 2.788z"/>
                        </svg>
                    </div>
                    <h5 class="fw-bold">Custom Packages</h5>
                    <p class="text-muted">Choose from Basic, Standard, or Premium packages</p>
                </div>
            </div>
        </div>
    </div>
</div>
