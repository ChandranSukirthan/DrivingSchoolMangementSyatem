<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contact Us - DriveWise Academy</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #0a0a0a; /* Dark background */
      color: #f2f2f2;
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color: #222; /* Dark background for the navbar */
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
    }

    .navbar-brand {
      color: #e43e31 !important; /* Gold yellow */
      font-size: 2rem;
      font-weight: 700;
    }

    .navbar-nav .nav-link {
      color: #f2f2f2 !important;
      padding: 10px 20px;
      font-weight: 500;
    }

    .navbar-nav .nav-link:hover {
      color: #e43e31 !important;
    }

    section.py-5 {
      background: linear-gradient(to bottom right, #333, #444); /* Dark gradient */
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    }

    h2, h5 {
      font-weight: 700;
      color: #f7c645; /* Gold yellow text */
    }

    p {
      font-size: 1.1rem;
      line-height: 1.6;
      color: #ddd;
    }

    #map {
      height: 350px;
      width: 100%;
      border-radius: 15px;
      margin-top: 30px;
    }

    .container {
      padding: 30px;
    }

    .contact-info p {
      margin-bottom: 20px;
    }

    .contact-info {
      border-left: 4px solid #f9c846; /* Gold left border */
      padding-left: 20px;
    }

    .fadeInUp {
      animation: fadeInUp 1s ease-out;
    }

    @keyframes fadeInUp {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }

    /* Button styles */
    .btn-outline-warning {
      border: 2px solid #f9c846;
      color: #f9c846;
      font-weight: bold;
      transition: 0.3s ease;
    }

    .btn-outline-warning:hover {
      background-color: #f9c846;
      color: #fff;
    }

  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
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

<!-- Contact Section -->
<section class="py-5 fadeInUp">
  <div class="container">
    <h2 class="text-center mb-4">Contact Us</h2>
    <div class="row">
      <!-- Contact Info -->
      <div class="col-md-6 contact-info">
        <h5>Contact Information</h5>
        <p><strong>Address:</strong> 123 Driving Street, City Center</p>
        <p><strong>Phone:</strong> (+94) 456-7890</p>
        <p><strong>Email:</strong> info@drivewise.com</p>
        <p><strong>Hours:</strong> Mon-Sat: 8:00 AM - 6:00 PM</p>
        <a href="mailto:info@drivewise.com" class="btn btn-outline-warning">Email Us</a>
      </div>

      <!-- Map -->
      <div class="col-md-6">
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
