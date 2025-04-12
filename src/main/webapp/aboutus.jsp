<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us - DriveWise Academy</title>
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css"/>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    #map { height: 400px; }
    .package-card {
      transition: all 0.3s ease;
    }
    .package-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
<body class="font-sans bg-gray-50">

<!-- Navigation -->
<nav class="bg-white shadow-lg">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex justify-between h-20">
      <div class="flex items-center">
        <a href="#" class="text-2xl font-bold text-indigo-600 flex items-center">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path d="M9 17a2 2 0 11-4 0 2 2 0 014 0zM19 17a2 2 0 11-4 0 2 2 0 014 0z" />
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16V6a1 1 0 00-1-1H4a1 1 0 00-1 1v10a1 1 0 001 1h1m8-1a1 1 0 01-1 1H9m4-1V8a1 1 0 011-1h2.586a1 1 0 01.707.293l3.414 3.414a1 1 0 01.293.707V16a1 1 0 01-1 1h-1m-6-1a1 1 0 001 1h1M5 17a2 2 0 104 0m-4 0a2 2 0 114 0m6 0a2 2 0 104 0m-4 0a2 2 0 114 0" />
          </svg>
          DriveWise Academy
        </a>
      </div>
      <div class="hidden md:flex items-center space-x-8">
        <a href="index.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">Home</a>
        <a href="aboutus.jsp" class="bg-indigo-100 text-indigo-700 px-3 py-2 rounded-md text-sm font-medium">About Us</a>
        <a href="contact.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">Contact</a>
        <a href="login.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">Register/Login</a>
      </div>
      <div class="md:hidden flex items-center">
        <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500" aria-expanded="false">
          <span class="sr-only">Open main menu</span>
          <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </button>
      </div>
    </div>
  </div>

  <!-- Mobile menu -->
  <div class="md:hidden hidden" id="mobile-menu">
    <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3 bg-white shadow-md">
      <a href="index.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">Home</a>
      <a href="aboutus.jsp" class="bg-indigo-100 text-indigo-700 block px-3 py-2 rounded-md text-base font-medium">About Us</a>
      <a href="contact.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">Contact</a>
      <a href="login.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">Register/Login</a>
    </div>
  </div>
</nav>

<!-- Hero Section -->
<section class="relative bg-gradient-to-r from-indigo-600 to-blue-600 text-white py-20">
  <div class="absolute inset-0 opacity-20 bg-[url('https://images.unsplash.com/photo-1531058020387-3be344556be6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')] bg-cover bg-center"></div>
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 text-center">
    <h1 class="text-4xl md:text-5xl font-bold mb-4">About DriveWise Academy</h1>
    <p class="text-xl md:text-2xl font-light max-w-3xl mx-auto">Your trusted partner in learning to drive safely and confidently</p>
  </div>
</section>

<!-- Packages Section -->
<section class="py-16 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center mb-12">
      <h2 class="text-3xl font-bold text-gray-900 mb-2">Our Driving Packages</h2>
      <div class="w-20 h-1 bg-indigo-600 mx-auto"></div>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      <!-- Basic Package -->
      <div class="package-card bg-white rounded-xl shadow-md overflow-hidden border border-gray-100 hover:border-indigo-200 transition-all duration-300">
        <div class="p-6">
          <div class="text-center mb-6">
            <h3 class="text-xl font-bold text-gray-900">Basic Package</h3>
            <p class="text-3xl font-bold text-indigo-600 mt-2">RS.8000</p>
          </div>
          <ul class="space-y-3 mb-8">
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>10 Hours of Driving Lessons</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Basic Theory Classes</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Learning Materials</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Practice Tests</span>
            </li>
          </ul>
          <a href="login.jsp" class="block w-full py-3 px-4 text-center bg-indigo-600 hover:bg-indigo-700 text-white font-medium rounded-lg transition-colors duration-300">
            Book Now
          </a>
        </div>
      </div>

      <!-- Standard Package -->
      <div class="package-card bg-white rounded-xl shadow-lg overflow-hidden border-2 border-indigo-200 transform scale-105 z-10 transition-all duration-300">
        <div class="p-6">
          <div class="text-center mb-6">
            <div class="absolute top-0 right-0 bg-indigo-600 text-white text-xs font-bold px-3 py-1 transform translate-x-2 -translate-y-2 rounded-bl-lg">
              POPULAR
            </div>
            <h3 class="text-xl font-bold text-gray-900">Standard Package</h3>
            <p class="text-3xl font-bold text-indigo-600 mt-2">RS.12000</p>
          </div>
          <ul class="space-y-3 mb-8">
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>20 Hours of Driving Lessons</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Comprehensive Theory Classes</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Premium Learning Materials</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Unlimited Practice Tests</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Mock Driving Test</span>
            </li>
          </ul>
          <a href="login.jsp" class="block w-full py-3 px-4 text-center bg-indigo-600 hover:bg-indigo-700 text-white font-medium rounded-lg transition-colors duration-300">
            Book Now
          </a>
        </div>
      </div>

      <!-- Premium Package -->
      <div class="package-card bg-white rounded-xl shadow-md overflow-hidden border border-gray-100 hover:border-indigo-200 transition-all duration-300">
        <div class="p-6">
          <div class="text-center mb-6">
            <h3 class="text-xl font-bold text-gray-900">Premium Package</h3>
            <p class="text-3xl font-bold text-indigo-600 mt-2">RS.20000</p>
          </div>
          <ul class="space-y-3 mb-8">
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>30 Hours of Driving Lessons</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Advanced Theory Classes</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Premium Learning Materials</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Unlimited Practice Tests</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>2 Mock Driving Tests</span>
            </li>
            <li class="flex items-start">
              <svg class="h-5 w-5 text-green-500 mr-2 mt-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              <span>Flexible Scheduling</span>
            </li>
          </ul>
          <a href="login.jsp" class="block w-full py-3 px-4 text-center bg-indigo-600 hover:bg-indigo-700 text-white font-medium rounded-lg transition-colors duration-300">
            Book Now
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Map Section -->
<section class="py-16 bg-gray-50">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center mb-12">
      <h2 class="text-3xl font-bold text-gray-900 mb-2">Find Us</h2>
      <div class="w-20 h-1 bg-indigo-600 mx-auto"></div>
    </div>

    <div class="bg-white rounded-xl shadow-lg overflow-hidden">
      <div id="map" class="w-full"></div>
      <div class="p-6">
        <div class="flex items-center">
          <div class="flex-shrink-0 bg-indigo-100 p-3 rounded-lg">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
          </div>
          <div class="ml-4">
            <h3 class="text-lg font-medium text-gray-900">DriveWise Academy</h3>
            <p class="text-gray-600">123 Driving Street, City Center</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Contact Info -->
<section class="py-16 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center mb-12">
      <h2 class="text-3xl font-bold text-gray-900 mb-2">Contact Information</h2>
      <div class="w-20 h-1 bg-indigo-600 mx-auto"></div>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
      <div class="bg-gray-50 p-6 rounded-xl text-center">
        <div class="mx-auto h-12 w-12 bg-indigo-100 rounded-full flex items-center justify-center mb-4">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
          </svg>
        </div>
        <h3 class="text-lg font-medium text-gray-900 mb-2">Address</h3>
        <p class="text-gray-600">123 Driving Street<br>City Center</p>
      </div>

      <div class="bg-gray-50 p-6 rounded-xl text-center">
        <div class="mx-auto h-12 w-12 bg-indigo-100 rounded-full flex items-center justify-center mb-4">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
          </svg>
        </div>
        <h3 class="text-lg font-medium text-gray-900 mb-2">Phone</h3>
        <p class="text-gray-600">(+94) 456-7890</p>
      </div>

      <div class="bg-gray-50 p-6 rounded-xl text-center">
        <div class="mx-auto h-12 w-12 bg-indigo-100 rounded-full flex items-center justify-center mb-4">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
          </svg>
        </div>
        <h3 class="text-lg font-medium text-gray-900 mb-2">Email</h3>
        <p class="text-gray-600">info@drivewise.com</p>
      </div>

      <div class="bg-gray-50 p-6 rounded-xl text-center">
        <div class="mx-auto h-12 w-12 bg-indigo-100 rounded-full flex items-center justify-center mb-4">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
          </svg>
        </div>
        <h3 class="text-lg font-medium text-gray-900 mb-2">Hours</h3>
        <p class="text-gray-600">Mon-Sat: 8:00 AM - 6:00 PM</p>
      </div>
    </div>
  </div>
</section>

<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
<script>
  // Mobile menu toggle
  document.addEventListener('DOMContentLoaded', function() {
    const mobileMenuButton = document.querySelector('[aria-expanded="false"]');
    const mobileMenu = document.getElementById('mobile-menu');

    mobileMenuButton.addEventListener('click', function() {
      const expanded = this.getAttribute('aria-expanded') === 'true';
      this.setAttribute('aria-expanded', !expanded);
      mobileMenu.classList.toggle('hidden');
    });

    // Initialize map
    const map = L.map('map').setView([6.9271, 79.8612], 15); // Coordinates for Colombo, Sri Lanka (example)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: 'Leaflet | © OpenStreetMap contributors'
    }).addTo(map);

    // Custom icon
    const drivingIcon = L.icon({
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/447/447031.png',
      iconSize: [32, 32],
      iconAnchor: [16, 32],
      popupAnchor: [0, -32]
    });

    L.marker([6.9271, 79.8612], {icon: drivingIcon}).addTo(map)
            .bindPopup("<b>DriveWise Academy</b><br>123 Driving Street, City Center")
            .openPopup();
  });
</script>
</body>
</html>