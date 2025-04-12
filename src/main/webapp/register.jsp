<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Driving School</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<%--    <!-- Bootstrap CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <!-- Font Awesome -->--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">--%>
<%--    <style>--%>
<%--        :root {--%>
<%--            --primary-color: #4CAF50; /* Your original green color */--%>
<%--            --light-color: #f8f9fa;--%>
<%--        }--%>

<%--        body {--%>
<%--            background-size: cover;--%>
<%--            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)) fixed center;--%>
<%--            min-height: 100vh;--%>
<%--            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;--%>
<%--            margin: 0;--%>
<%--        }--%>

<%--        .navbar {--%>
<%--            background-color: var(--primary-color);--%>
<%--            padding: 15px;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .navbar a {--%>
<%--            color: white;--%>
<%--            margin: 0 15px;--%>
<%--            text-decoration: none;--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        .navbar a:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>

<%--        .auth-container {--%>
<%--            min-height: calc(100vh - 60px); /* Adjust for navbar height */--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            padding: 2rem;--%>
<%--        }--%>

<%--        .auth-card {--%>
<%--            background: rgba(255, 255, 255, 0.95);--%>
<%--            border-radius: 20px;--%>
<%--            padding: 3rem;--%>
<%--            box-shadow: 0 10px 30px rgba(0,0,0,0.2);--%>
<%--            backdrop-filter: blur(10px);--%>
<%--            border: 1px solid rgba(255, 255, 255, 0.2);--%>
<%--            max-width: 400px;--%>
<%--            margin: 0 auto;--%>
<%--        }--%>

<%--        .auth-card h2 {--%>
<%--            color: var(--primary-color);--%>
<%--            font-size: 2rem;--%>
<%--            text-align: center;--%>
<%--            margin-bottom: 2rem;--%>
<%--            font-weight: 700;--%>
<%--        }--%>

<%--        .auth-form {--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            gap: 1.5rem;--%>
<%--        }--%>

<%--        .form-group {--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .form-control {--%>
<%--            background: rgba(255, 255, 255, 0.8);--%>
<%--            border: 1px solid rgba(255, 255, 255, 0.2);--%>
<%--            border-radius: 10px;--%>
<%--            padding: 1rem;--%>
<%--            font-size: 1rem;--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .form-control:focus {--%>
<%--            background: white;--%>
<%--            border-color: var(--primary-color);--%>
<%--            box-shadow: 0 0 0 0.2rem rgba(76,175,80,.25);--%>
<%--        }--%>

<%--        .form-label {--%>
<%--            position: absolute;--%>
<%--            top: 1rem;--%>
<%--            left: 1rem;--%>
<%--            color: #6c757d;--%>
<%--            transition: all 0.3s ease;--%>
<%--            pointer-events: none;--%>
<%--        }--%>

<%--        .form-control:focus + .form-label,--%>
<%--        .form-control.filled + .form-label {--%>
<%--            top: -0.5rem;--%>
<%--            left: 1rem;--%>
<%--            font-size: 0.8rem;--%>
<%--            color: var(--primary-color);--%>
<%--        }--%>

<%--        select.form-control {--%>
<%--            appearance: none;--%>
<%--            -webkit-appearance: none;--%>
<%--            -moz-appearance: none;--%>
<%--            background: rgba(255, 255, 255, 0.8) url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="%236c757d" viewBox="0 0 16 16"><path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/></svg>') no-repeat right 1rem center;--%>
<%--        }--%>

<%--        select.form-control:focus {--%>
<%--            background: white url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="%234CAF50" viewBox="0 0 16 16"><path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/></svg>') no-repeat right 1rem center;--%>
<%--        }--%>

<%--        .btn-primary {--%>
<%--            background-color: var(--primary-color);--%>
<%--            padding: 1rem 2rem;--%>
<%--            border-radius: 25px;--%>
<%--            font-weight: 600;--%>
<%--            font-size: 1.1rem;--%>
<%--            border: none;--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .btn-primary:hover {--%>
<%--            transform: translateY(-2px);--%>
<%--            box-shadow: 0 5px 15px rgba(76,175,80,.3);--%>
<%--        }--%>

<%--        .auth-footer {--%>
<%--            text-align: center;--%>
<%--            margin-top: 2rem;--%>
<%--        }--%>

<%--        .auth-footer a {--%>
<%--            color: var(--primary-color);--%>
<%--            text-decoration: none;--%>
<%--            font-weight: 600;--%>
<%--        }--%>

<%--        .auth-footer a:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>

<%--        @media (max-width: 768px) {--%>
<%--            .auth-card {--%>
<%--                padding: 2rem;--%>
<%--            }--%>

<%--            .auth-card h2 {--%>
<%--                font-size: 1.75rem;--%>
<%--            }--%>

<%--            .form-control {--%>
<%--                padding: 0.75rem;--%>
<%--            }--%>

<%--            .btn-primary {--%>
<%--                padding: 0.75rem 1.5rem;--%>
<%--                font-size: 1rem;--%>
<%--            }--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<body class="bg-gradient-to-br from-indigo-50 to-blue-100 min-h-screen font-sans">
<!-- Navigation Header -->
<header class="bg-white shadow-sm">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16 items-center">
            <!-- Logo/Brand -->
            <div class="flex-shrink-0 flex items-center">
                <a href="#" class="text-xl font-bold text-indigo-600 flex items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                    </svg>
                    DriveWise Academy
                </a>
            </div>

            <!-- Navigation Links -->
            <nav class="hidden md:flex space-x-8">
                <a href="index.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">Home</a>
                <a href="aboutus.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">About</a>
                <a href="contact.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">Contact</a>
                <a href="login.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">Login</a>
                <a href="register.jsp" class="bg-indigo-100 text-indigo-700 px-3 py-2 rounded-md text-sm font-medium">Register</a>
            </nav>

            <!-- Mobile menu button -->
            <div class="md:hidden">
                <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500" aria-controls="mobile-menu" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <!-- Menu icon -->
                    <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Mobile menu (hidden by default) -->
    <div class="md:hidden hidden" id="mobile-menu">
        <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3">
            <a href="index.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">Home</a>
            <a href="aboutus.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">About</a>
            <a href="contact.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">Contact</a>
            <a href="login.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">Login</a>
            <a href="register.jsp" class="bg-indigo-100 text-indigo-700 block px-3 py-2 rounded-md text-base font-medium">Register</a>
        </div>
    </div>
</header>

<!-- Main Content -->
<main class="flex-grow flex items-center justify-center p-4">
    <!-- Registration Card -->
    <div class="w-full max-w-md bg-white rounded-2xl shadow-xl overflow-hidden mt-8 mb-8">
        <!-- Decorative Header Strip -->
        <div class="h-2 bg-gradient-to-r from-indigo-500 to-blue-600"></div>

        <!-- Card Content -->
        <div class="p-8">
            <!-- Logo and Title -->
            <div class="text-center mb-8">
                <div class="mx-auto h-12 w-12 rounded-full bg-indigo-100 flex items-center justify-center mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z" />
                    </svg>
                </div>
                <h2 class="text-3xl font-bold text-gray-800">Create Account</h2>
                <p class="mt-2 text-gray-500">Join DriveWise Academy today</p>
            </div>

            <!-- Registration Form -->
            <form class="space-y-6" action="RegisterServlet" method="post">
                <!-- Username Field -->
                <div class="relative">
                    <input
                            id="username"
                            name="username"
                            type="text"
                            required
                            class="peer h-12 w-full px-4 text-gray-700 placeholder-transparent bg-gray-50 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
                            placeholder=" "
                    />
                    <label
                            for="username"
                            class="absolute left-4 -top-2.5 px-1 text-sm text-gray-600 bg-white peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-3 peer-focus:-top-2.5 peer-focus:text-indigo-600 peer-focus:text-sm transition-all"
                    >
                        Username
                    </label>
                </div>

                <!-- Password Field -->
                <div class="relative mt-6">
                    <input
                            id="password"
                            name="password"
                            type="password"
                            required
                            class="peer h-12 w-full px-4 text-gray-700 placeholder-transparent bg-gray-50 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
                            placeholder=" "
                    />
                    <label
                            for="password"
                            class="absolute left-4 -top-2.5 px-1 text-sm text-gray-600 bg-white peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-3 peer-focus:-top-2.5 peer-focus:text-indigo-600 peer-focus:text-sm transition-all"
                    >
                        Password
                    </label>
                </div>

                <!-- User Type Field -->
                <div class="relative mt-6">
                    <select
                            id="userType"
                            name="userType"
                            required
                            class="peer h-12 w-full px-4 pr-10 text-gray-700 bg-gray-50 border rounded-lg appearance-none focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent"
                    >
                        <option value="" disabled selected hidden></option>
                        <option value="basic">Basic</option>
                        <option value="standard">Standard</option>
                        <option value="premium">Premium</option>
                    </select>
                    <label
                            for="userType"
                            class="absolute left-4 -top-2.5 px-1 text-sm text-gray-600 bg-white peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-3 peer-focus:-top-2.5 peer-focus:text-indigo-600 peer-focus:text-sm transition-all"
                    >
                        Membership Type
                    </label>
                    <div class="absolute right-4 top-1/2 transform -translate-y-1/2 pointer-events-none text-gray-400">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </div>
                </div>

                <!-- Submit Button -->
                <button
                        type="submit"
                        class="w-full h-12 px-6 bg-gradient-to-r from-indigo-600 to-blue-600 rounded-lg shadow-md text-white font-medium hover:from-indigo-700 hover:to-blue-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition-all"
                >
                    Register Now
                </button>
            </form>

            <!-- Footer Links -->
            <div class="mt-6 text-center">
                <p class="text-gray-500">
                    Already have an account?
                    <a href="login.jsp" class="font-medium text-indigo-600 hover:text-indigo-500 transition-colors">
                        Sign in here
                    </a>
                </p>
            </div>
        </div>
    </div>
</main>

<!-- Mobile menu script -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const mobileMenuButton = document.querySelector('[aria-controls="mobile-menu"]');
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