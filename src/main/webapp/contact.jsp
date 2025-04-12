<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contact Us - DriveWise Academy</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
  <style>
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
        <li class="nav-item"><a class="nav-link" href="aboutus.jsp">About Us</a></li>
        <li class="nav-item"><a class="nav-link active" href="contact.jsp">Contact</a></li>
        <li class="nav-item"><a class="nav-link" href="login.jsp">Register/Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Contact Section -->
<section class="py-5">
  <div class="container">
    <h2 class="text-center mb-4">Contact Us</h2>
    <div class="row">
      <!-- Contact Info -->
      <div class="col-md-6">
        <h5>Contact Information</h5>
        <p><strong>Address:</strong> 123 Driving Street, City Center</p>
        <p><strong>Phone:</strong> (+94) 456-7890</p>
        <p><strong>Email:</strong> info@drivewise.com</p>
        <p><strong>Hours:</strong> Mon-Sat: 8:00 AM - 6:00 PM</p>

        <div id="map"></div>
      </div>
    </div>
  </div>
</section>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
<script>
  const map = L.map('map').setView([6.9271, 79.8612], 13); // Example location: Colombo
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Leaflet | © OpenStreetMap contributors'
  }).addTo(map);
  L.marker([6.9271, 79.8612]).addTo(map)
          .bindPopup("DriveWise Academy<br>123 Driving Street, City Center")
          .openPopup();
</script>
</body>
</html>
