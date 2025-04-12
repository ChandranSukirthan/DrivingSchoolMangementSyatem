<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Driving School</title>
    <script src="https://cdn.tailwindcss.com"></script>
<%--    <!-- Bootstrap CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">--%>
<%--    <!-- Font Awesome for icons -->--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous">--%>
<%--    <style>--%>
<%--        :root {--%>
<%--            --primary-color: #4CAF50;--%>
<%--            --light-color: #f8f9fa;--%>
<%--        }--%>

<%--        body {--%>
<%--            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1592740370664-2bff88666800?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');--%>
<%--            background-size: cover;--%>
<%--            background-position: center;--%>
<%--            background-attachment: fixed;--%>
<%--            min-height: 100vh;--%>
<%--            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;--%>
<%--            margin: 0;--%>
<%--        }--%>

<%--        .navbar {--%>
<%--            background-color: var(--primary-color);--%>
<%--        }--%>

<%--        .navbar-brand {--%>
<%--            font-weight: 700;--%>
<%--            color: white !important;--%>
<%--        }--%>

<%--        .nav-link {--%>
<%--            color: white !important;--%>
<%--            font-weight: 500;--%>
<%--            transition: color 0.3s ease;--%>
<%--        }--%>

<%--        .nav-link:hover {--%>
<%--            color: var(--light-color) !important;--%>
<%--            text-decoration: underline;--%>
<%--        }--%>

<%--        .container {--%>
<%--            max-width: 900px;--%>
<%--            margin: 3rem auto;--%>
<%--            padding: 2rem;--%>
<%--        }--%>

<%--        .dashboard-card {--%>
<%--            background: rgba(255, 255, 255, 0.95);--%>
<%--            border-radius: 15px;--%>
<%--            padding: 2rem;--%>
<%--            box-shadow: 0 10px 30px rgba(0,0,0,0.2);--%>
<%--            backdrop-filter: blur(10px);--%>
<%--            border: 1px solid rgba(255, 255, 255, 0.2);--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .dashboard-card h2 {--%>
<%--            color: var(--primary-color);--%>
<%--            font-size: 2rem;--%>
<%--            font-weight: 700;--%>
<%--            margin-bottom: 1rem;--%>
<%--        }--%>

<%--        .dashboard-card h3 {--%>
<%--            color: #333;--%>
<%--            font-size: 1.5rem;--%>
<%--            margin-bottom: 2rem;--%>
<%--        }--%>

<%--        .card-grid {--%>
<%--            display: grid;--%>
<%--            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));--%>
<%--            gap: 1.5rem;--%>
<%--            margin-top: 2rem;--%>
<%--        }--%>

<%--        .card {--%>
<%--            background: white;--%>
<%--            border: none;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 5px 15px rgba(0,0,0,0.1);--%>
<%--            transition: transform 0.3s ease;--%>
<%--        }--%>

<%--        .card:hover {--%>
<%--            transform: translateY(-5px);--%>
<%--        }--%>

<%--        .card-body {--%>
<%--            padding: 1.5rem;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .card-title {--%>
<%--            color: var(--primary-color);--%>
<%--            font-size: 1.25rem;--%>
<%--            font-weight: 600;--%>
<%--            margin-bottom: 0.5rem;--%>
<%--        }--%>

<%--        .card-link {--%>
<%--            color: var(--primary-color);--%>
<%--            text-decoration: none;--%>
<%--            font-size: 1rem;--%>
<%--            font-weight: 500;--%>
<%--        }--%>

<%--        .card-link:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>

<%--        footer {--%>
<%--            background-color: var(--primary-color);--%>
<%--            color: white;--%>
<%--            padding: 1.5rem 0;--%>
<%--            margin-top: 3rem;--%>
<%--        }--%>

<%--        footer h5 {--%>
<%--            font-weight: 700;--%>
<%--        }--%>

<%--        footer p {--%>
<%--            margin: 0;--%>
<%--            font-size: 0.9rem;--%>
<%--        }--%>

<%--        @media (max-width: 768px) {--%>
<%--            .container {--%>
<%--                padding: 1rem;--%>
<%--            }--%>

<%--            .dashboard-card {--%>
<%--                padding: 1.5rem;--%>
<%--            }--%>

<%--            .dashboard-card h2 {--%>
<%--                font-size: 1.75rem;--%>
<%--            }--%>

<%--            .card-grid {--%>
<%--                grid-template-columns: 1fr;--%>
<%--            }--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body class="bg-gray-50 font-sans min-h-screen flex flex-col">
<!-- Navigation -->
<nav class="bg-gradient-to-r from-emerald-700 to-teal-700 shadow-lg">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex items-center">
                <a href="#" class="flex items-center text-white text-xl font-bold">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M9 17a2 2 0 11-4 0 2 2 0 014 0zM19 17a2 2 0 11-4 0 2 2 0 014 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16V6a1 1 0 00-1-1H4a1 1 0 00-1 1v10a1 1 0 001 1h1m8-1a1 1 0 01-1 1H9m4-1V8a1 1 0 011-1h2.586a1 1 0 01.707.293l3.414 3.414a1 1 0 01.293.707V16a1 1 0 01-1 1h-1m-6-1a1 1 0 001 1h1M5 17a2 2 0 104 0m-4 0a2 2 0 114 0m6 0a2 2 0 104 0m-4 0a2 2 0 114 0" />
                    </svg>
                    Driving School
                </a>
            </div>
            <div class="hidden md:flex items-center space-x-4">
                <a href="index.jsp" class="bg-emerald-800 text-white px-3 py-2 rounded-md text-sm font-medium">Home</a>
                <a href="manageUsers.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">Manage Users</a>
                <a href="addInstructor.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">Add Instructor</a>
                <a href="viewInstructors.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">View Instructors</a>
                <a href="viewLessonRequests.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">Lesson Requests</a>
            </div>
            <div class="hidden md:flex items-center ml-4">
                <a href="LogoutServlet" class="flex items-center text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                    </svg>
                    Logout
                </a>
            </div>
            <div class="md:hidden flex items-center">
                <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-emerald-200 hover:text-white hover:bg-emerald-600 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-expanded="false">
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
        <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3 bg-emerald-800">
            <a href="index.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-white bg-emerald-900">Home</a>
            <a href="manageUsers.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Manage Users</a>
            <a href="addInstructor.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Add Instructor</a>
            <a href="viewInstructors.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">View Instructors</a>
            <a href="viewLessonRequests.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Lesson Requests</a>
            <a href="LogoutServlet" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Logout</a>
        </div>
    </div>
</nav>

<!-- Dashboard Content -->
<main class="flex-grow">
    <div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
        <div class="bg-white rounded-xl shadow-lg overflow-hidden">
            <!-- Welcome Header -->
            <div class="px-6 py-4 bg-gradient-to-r from-emerald-600 to-teal-600">
                <h2 class="text-2xl font-bold text-white">Welcome, <%= session.getAttribute("username") %>!</h2>
                <h3 class="text-xl text-emerald-100">Admin Dashboard</h3>
            </div>

            <!-- Dashboard Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 p-6">
                <!-- Manage Users Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-200 hover:shadow-lg transition-all duration-300">
                    <div class="p-6">
                        <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
                            </svg>
                        </div>
                        <h5 class="text-lg font-semibold text-gray-900 mb-2">Manage Users</h5>
                        <a href="manageUsers.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-emerald-600 hover:bg-emerald-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-emerald-500 transition-colors">
                            Go to Users
                            <svg xmlns="http://www.w3.org/2000/svg" class="ml-2 h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3" />
                            </svg>
                        </a>
                    </div>
                </div>

                <!-- Add Instructor Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-200 hover:shadow-lg transition-all duration-300">
                    <div class="p-6">
                        <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z" />
                            </svg>
                        </div>
                        <h5 class="text-lg font-semibold text-gray-900 mb-2">Add Instructor</h5>
                        <a href="addInstructor.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-emerald-600 hover:bg-emerald-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-emerald-500 transition-colors">
                            Add New Instructor
                            <svg xmlns="http://www.w3.org/2000/svg" class="ml-2 h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                            </svg>
                        </a>
                    </div>
                </div>

                <!-- View Instructors Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-200 hover:shadow-lg transition-all duration-300">
                    <div class="p-6">
                        <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                            </svg>
                        </div>
                        <h5 class="text-lg font-semibold text-gray-900 mb-2">View Instructors</h5>
                        <a href="viewInstructors.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-emerald-600 hover:bg-emerald-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-emerald-500 transition-colors">
                            See All Instructors
                            <svg xmlns="http://www.w3.org/2000/svg" class="ml-2 h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                            </svg>
                        </a>
                    </div>
                </div>

                <!-- Lesson Requests Card -->
                <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-200 hover:shadow-lg transition-all duration-300">
                    <div class="p-6">
                        <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                            </svg>
                        </div>
                        <h5 class="text-lg font-semibold text-gray-900 mb-2">Lesson Requests</h5>
                        <a href="viewLessonRequests.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-emerald-600 hover:bg-emerald-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-emerald-500 transition-colors">
                            Check Requests
                            <svg xmlns="http://www.w3.org/2000/svg" class="ml-2 h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- Footer -->
<footer class="bg-gradient-to-r from-emerald-800 to-teal-800 text-white py-6">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="md:flex md:items-center md:justify-between">
            <div class="flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path d="M9 17a2 2 0 11-4 0 2 2 0 014 0zM19 17a2 2 0 11-4 0 2 2 0 014 0z" />
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16V6a1 1 0 00-1-1H4a1 1 0 00-1 1v10a1 1 0 001 1h1m8-1a1 1 0 01-1 1H9m4-1V8a1 1 0 011-1h2.586a1 1 0 01.707.293l3.414 3.414a1 1 0 01.293.707V16a1 1 0 01-1 1h-1m-6-1a1 1 0 001 1h1M5 17a2 2 0 104 0m-4 0a2 2 0 114 0m6 0a2 2 0 104 0m-4 0a2 2 0 114 0" />
                </svg>
                <span class="text-lg font-semibold">Driving School</span>
            </div>
            <div class="mt-4 md:mt-0">
                <p class="text-emerald-100">© 2025 Driving School. All rights reserved.</p>
            </div>
        </div>
        <p class="mt-4 text-emerald-200 text-sm">Empowering safe and confident drivers.</p>
    </div>
</footer>

<!-- Mobile menu script -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const mobileMenuButton = document.querySelector('[aria-expanded="false"]');
        const mobileMenu = document.getElementById('mobile-menu');

        mobileMenuButton.addEventListener('click', function() {
            const expanded = this.getAttribute('aria-expanded') === 'true';
            this.setAttribute('aria-expanded', !expanded);
            mobileMenu.classList.toggle('hidden');
        });
    });
</script>
</body>
</html>