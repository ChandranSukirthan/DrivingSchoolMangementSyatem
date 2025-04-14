<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-emerald-100 to-white min-h-screen">

<!-- Navbar -->
<nav class="bg-white shadow-md">
    <div class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
        <div class="text-2xl font-bold text-emerald-700">DriveWise Academy</div>
        <ul class="flex space-x-6">
            <li><a href="dashboard.jsp" class="bg-emerald-800 text-white px-3 py-2 rounded-md text-sm font-medium"> 🪟 Dashboard</a></li>
            <li><a href="LogoutServlet" class="text-red-600 hover:text-red-800 font-medium">⏻ Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Welcome Message -->
<section class="max-w-7xl mx-auto px-4 mt-10">
    <h1 class="text-3xl font-bold text-emerald-800 mb-6">Welcome, <%= username %>!</h1>

    <!-- Dashboard Cards -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">

        <!-- Schedule a Lesson -->
        <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-300 hover:shadow-lg transition-all duration-300">
            <div class="p-6">
                <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                    📅
                </div>
                <h5 class="text-lg font-semibold text-gray-900 mb-2">Schedule a Lesson</h5>
                <a href="scheduleLesson.jsp" class="inline-flex items-center px-4 py-2 text-sm font-medium rounded-md text-white bg-emerald-600 hover:bg-emerald-700">
                    Book Now →
                </a>
            </div>
        </div>

        <!-- View My Lessons -->
        <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-300 hover:shadow-lg transition-all duration-300">
            <div class="p-6">
                <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                    📖
                </div>
                <h5 class="text-lg font-semibold text-gray-900 mb-2">View My Lessons</h5>
                <a href="viewStudentLessons.jsp" class="inline-flex items-center px-4 py-2 text-sm font-medium rounded-md text-white bg-emerald-600 hover:bg-emerald-700">
                    View Lessons →
                </a>
            </div>
        </div>

        <!-- View Instructor Chart -->
        <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-300 hover:shadow-lg transition-all duration-300">
            <div class="p-6">
                <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                    📊
                </div>
                <h5 class="text-lg font-semibold text-gray-900 mb-2">Instructor Chart</h5>
                <a href="viewInstructors01.jsp" class="inline-flex items-center px-4 py-2 text-sm font-medium rounded-md text-white bg-emerald-600 hover:bg-emerald-700">
                    View Chart →
                </a>
            </div>
        </div>

        <!-- View My Profile -->
        <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-300 hover:shadow-lg transition-all duration-300">
            <div class="p-6">
                <div class="flex items-center justify-center w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 mb-4">
                    👤
                </div>
                <h5 class="text-lg font-semibold text-gray-900 mb-2">About You</h5>
                <a href="aboutyou.jsp" class="inline-flex items-center px-4 py-2 text-sm font-medium rounded-md text-white bg-emerald-600 hover:bg-emerald-700">
                    View Profile →
                </a>
            </div>
        </div>

        <!-- Log Out -->
        <div class="bg-white rounded-lg shadow-md overflow-hidden border border-gray-100 hover:border-emerald-300 hover:shadow-lg transition-all duration-300">
            <div class="p-6">
                <div class="flex items-center justify-center w-12 h-12 rounded-full bg-red-100 text-red-600 mb-4">
                    🚪
                </div>
                <h5 class="text-lg font-semibold text-gray-900 mb-2">Logout</h5>
                <a href="LogoutServlet" class="inline-flex items-center px-4 py-2 text-sm font-medium rounded-md text-white bg-red-600 hover:bg-red-700">
                    Logout →
                </a>
            </div>
        </div>

    </div>
</section>

</body>
</html>
