<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Us - DriveWise Academy</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css"/>
  <style>
    .package-card {
      border-radius: 15px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      transition: transform 0.3s ease;
    }
    .package-card:hover {
      transform: translateY(-5px);
    }
    #map {
      height: 300px;
      width: 100%;
      border-radius: 10px;
    }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">DriveWise Academy</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link active" href="aboutus.jsp">About Us</a></li>
        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
        <li class="nav-item"><a class="nav-link" href="login.jsp">Register/Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- About Section -->
<section class="py-5 text-center bg-light">
  <div class="container">
    <h2>About DriveWise Academy</h2>
    <p class="lead">Your trusted partner in learning to drive safely and confidently</p>
  </div>
</section>

<!-- Packages -->
<section class="py-5">
  <div class="container">
    <h3 class="text-center mb-4">Our Packages</h3>
    <div class="row g-4">
      <div class="col-md-4">
        <div class="card package-card h-100">
          <div class="card-body">
            <h5 class="card-title">Basic Package - RS.8000</h5>
            <ul>
              <li>10 Hours of Driving Lessons</li>
              <li>Basic Theory Classes</li>
              <li>Learning Materials</li>
              <li>Practice Tests</li>
              <br></br>

            </ul>
            <a href="login.jsp" class="btn btn-outline-primary w-100">Book Now</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card package-card h-100">
          <div class="card-body">
            <h5 class="card-title">Standard Package - RS.12000</h5>
            <ul>
              <li>20 Hours of Driving Lessons</li>
              <li>Comprehensive Theory Classes</li>
              <li>Premium Learning Materials</li>
              <li>Unlimited Practice Tests</li>
              <li>Mock Driving Test</li>
              
            </ul>
            <a href="login.jsp" class="btn btn-outline-primary w-100">Book Now</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card package-card h-100">
          <div class="card-body">
            <h5 class="card-title">Premium Package - RS.20000</h5>
            <ul>
              <li>30 Hours of Driving Lessons</li>
              <li>Advanced Theory Classes</li>
              <li>Premium Learning Materials</li>
              <li>Unlimited Practice Tests</li>
              <li>2 Mock Driving Tests</li>
              <li>Flexible Scheduling</li>
            </ul>
            <a href="login.jsp" class="btn btn-outline-primary w-100">Book Now</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Location Map -->
<section class="bg-light py-5">
  <div class="container">
    <h3 class="mb-3 text-center">Find Us</h3>
    <div id="map"></div>
  </div>
</section>

<!-- Contact Info -->
<section class="py-5">
  <div class="container">
    <h4 class="mb-3">Contact Information</h4>
    <ul class="list-unstyled">
      <li><strong>Address:</strong> 123 Driving Street, City Center</li>
      <li><strong>Phone:</strong> (+94) 456-7890</li>
      <li><strong>Email:</strong> info@drivewise.com</li>
      <li><strong>Hours:</strong> Mon-Sat: 8:00 AM - 6:00 PM</li>
    </ul>
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
<script>
  const map = L.map('map').setView([6.9271, 79.8612], 13); // Coordinates for Colombo, Sri Lanka (example)
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Leaflet | © OpenStreetMap contributors'
  }).addTo(map);
  L.marker([6.9271, 79.8612]).addTo(map)
          .bindPopup("DriveWise Academy<br>123 Driving Street, City Center")
          .openPopup();
</script>
</body>
</html>
