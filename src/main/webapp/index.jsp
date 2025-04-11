<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drive School - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #6c757d;
            --success-color: #28a745;
            --danger-color: #dc3545;
            --warning-color: #ffc107;
            --info-color: #17a2b8;
            --light-color: #f8f9fa;
            --dark-color: #343a40;
        }

        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 1rem 0;
            margin-bottom: 2rem;
        }

        .navbar-brand {
            font-weight: 600;
            color: var(--primary-color) !important;
        }

        .nav-link {
            color: var(--dark-color) !important;
            font-weight: 500;
            padding: 0.5rem 1rem !important;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            color: var(--primary-color) !important;
            transform: translateY(-2px);
        }

        .hero-section {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1592740370664-2bff88666800?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 10rem 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
        }

        .hero-section p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
        }

        .cta-button {
            background-color: var(--primary-color);
            padding: 1rem 2.5rem;
            border-radius: 30px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .cta-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,123,255,.25);
        }

        .features-section {
            padding: 5rem 0;
        }

        .feature-card {
            background: white;
            border-radius: 15px;
            padding: 2rem;
            text-align: center;
            margin-bottom: 2rem;
            transition: all 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .feature-icon {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 1.5rem;
        }

        .feature-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .packages-section {
            padding: 5rem 0;
        }

        .package-card {
            background: white;
            border-radius: 15px;
            padding: 2rem;
            margin-bottom: 2rem;
            transition: all 0.3s ease;
        }

        .package-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .package-price {
            font-size: 2rem;
            font-weight: 700;
            color: var(--primary-color);
            margin-bottom: 1rem;
        }

        .package-features {
            list-style: none;
            padding: 0;
            margin: 1rem 0;
        }

        .package-features li {
            margin-bottom: 0.5rem;
            color: var(--secondary-color);
        }

        .instructor-card {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            text-align: center;
            margin-bottom: 2rem;
            transition: all 0.3s ease;
        }

        .instructor-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .instructor-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 1rem;
            object-fit: cover;
        }

        .instructor-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .instructor-role {
            color: var(--secondary-color);
            margin-bottom: 0.5rem;
        }

        .instructor-experience {
            color: var(--primary-color);
            font-weight: 500;
        }

        .instructor-specialization {
            color: var(--secondary-color);
            margin-top: 1rem;
            font-size: 0.9rem;
        }

        .cta-section {
            background: linear-gradient(rgba(0,0,0,0.8), rgba(0,0,0,0.8)), url('https://images.unsplash.com/photo-1592740370664-2bff88666800?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 5rem 0;
            text-align: center;
        }

        .cta-section h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
        }

        @media (max-width: 768px) {
            .hero-section h1 {
                font-size: 2.5rem;
            }

            .hero-section p {
                font-size: 1.1rem;
            }

            .feature-card {
                margin-bottom: 1rem;
            }

            .package-card {
                margin-bottom: 1rem;
            }

            .instructor-card {
                margin-bottom: 1rem;
            }
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Drive School</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="booking.jsp">Booking</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Sign In</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="hero-section">
    <div class="container">
        <h1>Welcome to Drive School</h1>
        <p>Learn to drive with confidence from our professional instructors</p>
        <a href="booking.jsp" class="btn cta-button">Book Your Lessons</a>
    </div>
</section>

<section class="features-section">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-car"></i>
                    </div>
                    <h3 class="feature-title">Professional Instructors</h3>
                    <p>Learn from experienced and certified driving instructors</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-graduation-cap"></i>
                    </div>
                    <h3 class="feature-title">Modern Curriculum</h3>
                    <p>Up-to-date training methods and materials</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <h3 class="feature-title">Flexible Scheduling</h3>
                    <p>Book lessons at your convenience</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="packages-section">
    <div class="container">
        <h2 class="text-center mb-5">Our Packages</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="package-card">
                    <h3>Basic Package</h3>
                    <p class="package-price">$299</p>
                    <ul class="package-features">
                        <li>10 Hours of Driving Lessons</li>
                        <li>Basic Driving Skills</li>
                        <li>City Driving Practice</li>
                        <li>Basic Road Rules</li>
                    </ul>
                    <a href="booking.jsp" class="btn btn-primary">Book Now</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="package-card">
                    <h3>Standard Package</h3>
                    <p class="package-price">$499</p>
                    <ul class="package-features">
                        <li>20 Hours of Driving Lessons</li>
                        <li>Advanced Driving Skills</li>
                        <li>Highway Driving Practice</li>
                        <li>Traffic Management</li>
                    </ul>
                    <a href="booking.jsp" class="btn btn-primary">Book Now</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="package-card">
                    <h3>Premium Package</h3>
                    <p class="package-price">$699</p>
                    <ul class="package-features">
                        <li>30 Hours of Driving Lessons</li>
                        <li>Expert Driving Skills</li>
                        <li>Special Driving Conditions</li>
                        <li>Complete Road Rules</li>
                    </ul>
                    <a href="booking.jsp" class="btn btn-primary">Book Now</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="instructors-section">
    <div class="container">
        <h2 class="text-center mb-5">Our Professional Instructors</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="instructor-card">
                    <img src="images/instructor1.jpg" alt="Instructor 1" class="instructor-image">
                    <h3 class="instructor-title">John Smith</h3>
                    <p class="instructor-role">Senior Driving Instructor</p>
                    <p class="instructor-experience">15+ years experience</p>
                    <div class="instructor-specialization">
                        <p><i class="fas fa-check text-success"></i> City Driving Expert</p>
                        <p><i class="fas fa-check text-success"></i> Highway Safety Specialist</p>
                        <p><i class="fas fa-check text-success"></i> Defensive Driving Instructor</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="instructor-card">
                    <img src="images/instructor2.jpg" alt="Instructor 2" class="instructor-image">
                    <h3 class="instructor-title">Jane Doe</h3>
                    <p class="instructor-role">Lead Driving Instructor</p>
                    <p class="instructor-experience">12+ years experience</p>
                    <div class="instructor-specialization">
                        <p><i class="fas fa-check text-success"></i> Advanced Driving Skills</p>
                        <p><i class="fas fa-check text-success"></i> Night Driving Expert</p>
                        <p><i class="fas fa-check text-success"></i> Traffic Management Specialist</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="instructor-card">
                    <img src="images/instructor1.jpg" alt="Instructor 3" class="instructor-image">
                    <h3 class="instructor-title">Mike Johnson</h3>
                    <p class="instructor-role">Driving Instructor</p>
                    <p class="instructor-experience">8+ years experience</p>
                    <div class="instructor-specialization">
                        <p><i class="fas fa-check text-success"></i> New Driver Specialist</p>
                        <p><i class="fas fa-check text-success"></i> City Navigation Expert</p>
                        <p><i class="fas fa-check text-success"></i> Parking Skills Instructor</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="cta-section">
    <div class="container">
        <h2>Ready to Start Your Driving Journey?</h2>
        <a href="booking.jsp" class="btn cta-button">Book Your Lessons Today</a>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>