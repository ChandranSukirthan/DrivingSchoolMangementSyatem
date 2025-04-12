<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login - Driving School</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<%--    <!-- Bootstrap CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <!-- Font Awesome -->--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">--%>
<%--    <style>--%>
<%--        :root {--%>
<%--            --primary-color: #4CAF50; /* Kept your original green color */--%>
<%--            --light-color: #f8f9fa;--%>
<%--        }--%>

<%--        body {--%>
<%--            background-size: cover;--%>
<%--            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7));--%>
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

<%--        .error {--%>
<%--            color: red;--%>
<%--            text-align: center;--%>
<%--            margin-top: 1rem;--%>
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
<body class="bg-gradient-to-br from-blue-50 to-indigo-100 min-h-screen font-sans">
<!-- Navigation -->
<nav class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex items-center">
                <a href="#" class="text-xl font-bold text-indigo-600 flex items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                    </svg>
                    DriveWise Academy
                </a>
            </div>
            <div class="hidden md:flex items-center space-x-8">
                <a href="index.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">Home</a>
                <a href="aboutus.jsp" class="text-gray-700 hover:text-indigo-600 px-3 py-2 text-sm font-medium transition-colors">About Us</a>
                <a href="contact.jsp" class="bg-indigo-100 text-indigo-700 px-3 py-2 rounded-md text-sm font-medium">Contact</a>
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
</nav>

<!-- Login Container -->
<div class="min-h-[calc(100vh-4rem)] flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
    <div class="max-w-md w-full bg-white rounded-2xl shadow-xl overflow-hidden">
        <!-- Decorative Header Strip -->
        <div class="h-2 bg-gradient-to-r from-blue-500 to-indigo-600"></div>

        <!-- Card Content -->
        <div class="p-8">
            <div class="text-center mb-8">
                <div class="mx-auto h-12 w-12 rounded-full bg-blue-100 flex items-center justify-center mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-blue-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1" />
                    </svg>
                </div>
                <h2 class="text-3xl font-bold text-gray-800">Student Login</h2>
                <p class="mt-2 text-gray-500">Welcome back to DriveWise Academy</p>
            </div>

            <form class="space-y-6" action="LoginServlet" method="post">
                <!-- Username Field -->
                <div class="relative">
                    <input
                            id="username"
                            name="username"
                            type="text"
                            required
                            class="peer h-12 w-full px-4 text-gray-700 placeholder-transparent bg-gray-50 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all"
                            placeholder=" "
                    />
                    <label
                            for="username"
                            class="absolute left-4 -top-2.5 px-1 text-sm text-gray-600 bg-white peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-3 peer-focus:-top-2.5 peer-focus:text-blue-600 peer-focus:text-sm transition-all"
                    >
                        Username
                    </label>
                </div>

                <!-- Password Field -->
                <div class="relative">
                    <input
                            id="password"
                            name="password"
                            type="password"
                            required
                            class="peer h-12 w-full px-4 text-gray-700 placeholder-transparent bg-gray-50 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all"
                            placeholder=" "
                    />
                    <label
                            for="password"
                            class="absolute left-4 -top-2.5 px-1 text-sm text-gray-600 bg-white peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-3 peer-focus:-top-2.5 peer-focus:text-blue-600 peer-focus:text-sm transition-all"
                    >
                        Password
                    </label>
                </div>

                <!-- Error Message -->
                <% if (request.getParameter("error") != null) { %>
                <div class="rounded-md bg-red-50 p-4">
                    <div class="flex">
                        <div class="flex-shrink-0">
                            <svg class="h-5 w-5 text-red-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd" />
                            </svg>
                        </div>
                        <div class="ml-3">
                            <p class="text-sm text-red-700"><%= request.getParameter("error") %></p>
                        </div>
                    </div>
                </div>
                <% } %>

                <!-- Submit Button -->
                <button
                        type="submit"
                        class="w-full h-12 px-6 bg-gradient-to-r from-blue-600 to-indigo-600 rounded-lg shadow-md text-white font-medium hover:from-blue-700 hover:to-indigo-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition-all"
                >
                    Login
                </button>

                <!-- Footer Links -->
                <div class="text-center text-sm text-gray-600">
                    New user?
                    <a href="register.jsp" class="font-medium text-blue-600 hover:text-blue-500 transition-colors">
                        Register here
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Mobile menu script -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const mobileMenuButton = document.querySelector('[aria-expanded="false"]');
        const mobileMenu = document.createElement('div');
        mobileMenu.className = 'md:hidden hidden';
        mobileMenu.id = 'mobile-menu';
        mobileMenu.innerHTML = `
                <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3 bg-white shadow-md">
                    <a href="index.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">Home</a>
                    <a href="aboutus.jsp" class="text-gray-700 hover:text-indigo-600 block px-3 py-2 rounded-md text-base font-medium">About Us</a>
                    <a href="contact.jsp" class="bg-indigo-100 text-indigo-700 block px-3 py-2 rounded-md text-base font-medium">Contact</a>
                </div>
            `;
        document.querySelector('nav').appendChild(mobileMenu);

        mobileMenuButton.addEventListener('click', function() {
            const expanded = this.getAttribute('aria-expanded') === 'true';
            this.setAttribute('aria-expanded', !expanded);
            mobileMenu.classList.toggle('hidden');
        });
    });
</script>
</body>
</html>