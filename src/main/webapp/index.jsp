<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DriveWise Academy</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>

<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: 'Segoe UI', sans-serif;--%>
<%--        }--%>
<%--        .hero {--%>
<%--            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('images/hero-driving.jpg') no-repeat center center/cover;--%>
<%--            color: white;--%>
<%--            height: 100vh;--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            justify-content: center;--%>
<%--            text-align: center;--%>
<%--            flex-direction: column;--%>
<%--        }--%>
<%--        .features {--%>
<%--            padding: 60px 20px;--%>
<%--        }--%>
<%--        .navbar-brand {--%>
<%--            font-weight: bold;--%>
<%--            font-size: 1.5rem;--%>
<%--        }--%>
<%--    </style>--%>

<body class="font-sans bg-gray-50">
<!-- Navigation -->
<nav class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-20 items-center">
            <div class="flex items-center">
                <a href="#" class="text-3xl font-bold text-indigo-600">DriveWise Academy</a>
            </div>
            <div class="hidden md:flex items-center space-x-8">
                <a href="index.jsp" class="text-indigo-600 font-medium border-b-2 border-indigo-600 px-1 pb-1">Home</a>
                <a href="aboutus.jsp" class="text-gray-700 hover:text-indigo-600 transition duration-300">About Us</a>
                <a href="contact.jsp" class="text-gray-700 hover:text-indigo-600 transition duration-300">Contact Us</a>
                <a href="login.jsp" class="text-gray-700 hover:text-indigo-600 transition duration-300">Register/Login</a>
                <a href="adminDashboard.jsp" class="text-gray-700 hover:text-indigo-600 transition duration-300">Admin</a>
            </div>
            <div class="md:hidden flex items-center">
                <button class="outline-none mobile-menu-button">
                    <svg class="w-6 h-6 text-gray-700" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>
            </div>
        </div>
    </div>
    <!-- Mobile menu -->
    <div class="hidden mobile-menu md:hidden">
        <ul class="">
            <li><a href="index.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-indigo-50">Home</a></li>
            <li><a href="aboutus.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-indigo-50">About Us</a></li>
            <li><a href="contact.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-indigo-50">Contact Us</a></li>
            <li><a href="login.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-indigo-50">Register/Login</a></li>
            <li><a href="adminDashboard.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-indigo-50">Admin</a></li>
        </ul>
    </div>
</nav>

<!-- Hero Section -->
<div class="relative bg-indigo-700 overflow-hidden">
    <div class="max-w-7xl mx-auto">
        <div class="relative z-10 pb-8 bg-indigo-700 sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32">
            <div class="pt-10 sm:pt-16 lg:pt-8 lg:pb-14 lg:overflow-hidden">
                <div class="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
                    <div class="sm:text-center lg:text-left">
                        <h1 class="text-4xl tracking-tight font-extrabold text-white sm:text-5xl md:text-6xl">
                            <span class="block">Start Your Driving</span>
                            <span class="block text-indigo-200">Journey Today</span>
                        </h1>
                        <p class="mt-3 text-base text-indigo-100 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0">
                            Professional instructors, flexible schedules, and comprehensive learning packages
                        </p>
                        <div class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
                            <div class="rounded-md shadow">
                                <a href="login.jsp" class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-indigo-700 bg-white hover:bg-indigo-50 md:py-4 md:text-lg md:px-10 transition duration-300">
                                    Get Started
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2">
        <img class="h-56 w-full object-cover sm:h-72 md:h-96 lg:w-full lg:h-full" src="https://images.unsplash.com/photo-1558980394-4c7c9299fe96?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Person driving a car">
    </div>
</div>

<!-- Features Section -->
<div class="py-12 bg-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
            <h2 class="text-3xl font-extrabold text-gray-900 sm:text-4xl">
                Why Choose Us?
            </h2>
            <p class="mt-4 max-w-2xl text-xl text-gray-500 mx-auto">
                We provide the best driving education experience
            </p>
        </div>

        <div class="mt-10">
            <div class="grid grid-cols-1 gap-10 sm:grid-cols-2 lg:grid-cols-3">
                <div class="bg-indigo-50 rounded-lg p-6 transition duration-300 hover:shadow-lg">
                    <div class="flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white">
                        <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                        </svg>
                    </div>
                    <h3 class="mt-5 text-lg font-medium text-gray-900">Expert Instructors</h3>
                    <p class="mt-2 text-base text-gray-500">
                        Learn from certified professionals with years of experience
                    </p>
                </div>

                <div class="bg-indigo-50 rounded-lg p-6 transition duration-300 hover:shadow-lg">
                    <div class="flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white">
                        <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                    </div>
                    <h3 class="mt-5 text-lg font-medium text-gray-900">Flexible Schedule</h3>
                    <p class="mt-2 text-base text-gray-500">
                        Book lessons at your convenience
                    </p>
                </div>

                <div class="bg-indigo-50 rounded-lg p-6 transition duration-300 hover:shadow-lg">
                    <div class="flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white">
                        <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"></path>
                        </svg>
                    </div>
                    <h3 class="mt-5 text-lg font-medium text-gray-900">Custom Packages</h3>
                    <p class="mt-2 text-base text-gray-500">
                        Choose from Basic, Standard, or Premium packages
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
