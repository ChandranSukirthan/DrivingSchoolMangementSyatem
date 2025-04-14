<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Us - DriveWise Academy</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css"/>
  <style>
    body {
      background-color: #0b0b0b;
      color: #ffffff;
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color: #000 !important;
    }

    .navbar-brand {
      font-weight: bold;
      font-size: 1.5rem;
      color: #e43e31 !important; /* Gold color */
      letter-spacing: 1px;
    }

    .nav-link {
      color: #ffffff !important;
      font-weight: 500;
      transition: all 0.3s ease-in-out;
    }

    .nav-link:hover {
      color: #e43e31 !important; /* Gold color */
    }

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
      opacity: 0;
      animation: fadeIn 2s 1s forwards;
    }

    /* Fade-in effect for the hero section */
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

    .btn-primary {
      background-color: #f9c846;
      border: none;
      color: #212529;
      padding: 12px 28px;
      font-weight: 600;
      transition: background-color 0.3s ease;
    }

    .btn-primary:hover {
      background-color: #e0ae30;
      color: white;
    }

    /* Section styling */
    .section-title {
      font-weight: 700;
      letter-spacing: 2px;
      color: #f9c846; /* Gold color */
    }

    .card {
      border-radius: 20px;
      background: #1a1a1a;
      color: #ffffff;
      border: 1px solid #2c2c2c;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: scale(1.03);
      box-shadow: 0 0 20px rgba(249, 200, 70, 0.4); /* Gold color */
    }

    .card-title {
      font-size: 1.4rem;
      font-weight: bold;
      color: #f9c846; /* Gold color */
    }

    .card h6 {
      color: #e0e0e0;
    }

    .btn-outline-primary, .btn-outline-success, .btn-outline-danger {
      font-weight: bold;
      transition: 0.3s ease;
    }

    .btn-outline-primary {
      border-color: #f9c846;
      color: #f9c846; /* Gold color */
    }

    .btn-outline-primary:hover {
      background-color: #f9c846;
      color: #fff;
    }

    .btn-outline-success {
      border-color: #28a745;
      color: #28a745;
    }

    .btn-outline-success:hover {
      background-color: #28a745;
      color: #fff;
    }

    .btn-outline-danger {
      border-color: #dc3545;
      color: #dc3545;
    }

    .btn-outline-danger:hover {
      background-color: #dc3545;
      color: #fff;
    }

    #map {
      height: 300px;
      width: 100%;
      border-radius: 15px;
      filter: grayscale(50%) brightness(0.9);
      border: 2px solid #f9c846; /* Gold color */
    }

  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">DriveWise</a>
    <button class="navbar-toggler text-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
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

<!-- Hero Section -->
<div class="hero">
  <h1 class="display-4 animate-typing">Welcome to DriveWise Academy</h1>
  <p class="lead">Your premium partner in mastering the road with confidence and precision.</p>
  <a href="login.jsp" class="btn btn-primary btn-lg">Get Started</a>
</div>

<!-- About -->
<section class="py-5 text-center mt-5">
  <div class="container">
    <h2 class="section-title display-6 text-uppercase">About DriveWise Academy</h2>
    <p class="lead">Your premium partner in mastering the road with confidence and precision.</p>
  </div>
</section>

<!-- Packages -->
<section class="py-5" style="background-color: #111;">
  <div class="container">
    <h2 class="text-center mb-5 display-5 text-danger fw-bold">Choose Your Package</h2>
    <div class="row g-4">
      <!-- Basic -->
      <div class="col-md-4">
        <div class="card h-100">
          <div class="card-body d-flex flex-column justify-content-between">
            <div>
              <h5 class="card-title">Basic Package</h5>
              <h6 class="mb-3">RS.8000</h6>
              <ul class="mb-4">
                <li>10 Hours of Driving Lessons</li>
                <li>Basic Theory Classes</li>
                <li>Learning Materials</li>
                <li>Practice Tests</li>
              </ul>
            </div>
            <a href="login.jsp" class="btn btn-outline-primary w-100">Book Now</a>
          </div>
        </div>
      </div>

      <!-- Standard -->
      <div class="col-md-4">
        <div class="card h-100">
          <div class="card-body d-flex flex-column justify-content-between">
            <div>
              <h5 class="card-title">Standard Package</h5>
              <h6 class="mb-3">RS.12000</h6>
              <ul class="mb-4">
                <li>20 Hours of Driving Lessons</li>
                <li>Comprehensive Theory Classes</li>
                <li>Premium Learning Materials</li>
                <li>Unlimited Practice Tests</li>
                <li>Mock Driving Test</li>
              </ul>
            </div>
            <a href="login.jsp" class="btn btn-outline-success w-100">Book Now</a>
          </div>
        </div>
      </div>

      <!-- Premium -->
      <div class="col-md-4">
        <div class="card h-100">
          <div class="card-body d-flex flex-column justify-content-between">
            <div>
              <h5 class="card-title">Premium Package</h5>
              <h6 class="mb-3">RS.20000</h6>
              <ul class="mb-4">
                <li>30 Hours of Driving Lessons</li>
                <li>Advanced Theory Classes</li>
                <li>Unlimited Practice Tests</li>
                <li>2 Mock Tests</li>
                <li>Flexible Scheduling</li>
              </ul>
            </div>
            <a href="login.jsp" class="btn btn-outline-danger w-100">Book Now</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Map -->
<section class="bg-dark py-5">
  <div class="container">
    <h3 class="text-center text-danger mb-4">Find Us On The Map</h3>
    <div id="map"></div>
  </div>
</section>

<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
<script>
  var map = L.map('map').setView([6.9271, 79.8612], 15); // Set the coordinates for your location

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  L.marker([6.9271, 79.8612]).addTo(map)
          .bindPopup('DriveWise Academy')
          .openPopup();
</script>

</body>
</html>
