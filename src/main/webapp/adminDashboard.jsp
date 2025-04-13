<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Driving School</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white font-sans min-h-screen flex flex-col">

<!-- Navigation -->
<nav class="bg-gradient-to-r from-gray-800 to-yellow-600 shadow-lg">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex items-center">
                <a href="#" class="flex items-center text-yellow-400 text-xl font-bold">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 mr-2 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M9 17a2 2 0 11-4 0 2 2 0 014 0zM19 17a2 2 0 11-4 0 2 2 0 014 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16V6a1 1 0 00-1-1H4a1 1 0 00-1 1v10a1 1 0 001 1h1m8-1a1 1 0 01-1 1H9m4-1V8a1 1 0 011-1h2.586a1 1 0 01.707.293l3.414 3.414a1 1 0 01.293.707V16a1 1 0 01-1 1h-1m-6-1a1 1 0 001 1h1M5 17a2 2 0 104 0m-4 0a2 2 0 114 0m6 0a2 2 0 104 0m-4 0a2 2 0 114 0" />
                    </svg>
                    Driving School
                </a>
            </div>
            <div class="hidden md:flex items-center space-x-4">
                <a href="index.jsp" class="bg-yellow-500 text-black px-3 py-2 rounded-md text-sm font-semibold hover:bg-yellow-600">Home</a>
                <a href="manageUsers.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">Manage Users</a>
                <a href="addInstructor.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">Add Instructor</a>
                <a href="viewInstructors.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">View Instructors</a>
                <a href="viewLessonRequests.jsp" class="text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">Lesson Requests</a>
            </div>
            <div class="hidden md:flex items-center ml-4">
                <a href="LogoutServlet" class="flex items-center text-gray-300 hover:text-white px-3 py-2 text-sm font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                    </svg>
                    Logout
                </a>
            </div>
        </div>
    </div>
</nav>

<!-- Dashboard Content -->
<div class="flex-grow container mx-auto px-6 py-10">
    <h1 class="text-3xl font-bold text-yellow-400 mb-8 text-center">Admin Dashboard</h1>
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        <!-- Dashboard Card -->
        <div class="bg-gray-800 border border-yellow-500 rounded-lg shadow-lg p-6 hover:shadow-yellow-400 transition-shadow duration-300">
            <h2 class="text-xl font-semibold text-yellow-300 mb-4">Manage Users</h2>
            <p class="text-gray-300 mb-4">Create, edit, and remove students and admins.</p>
            <a href="manageUsers.jsp" class="inline-block bg-yellow-500 hover:bg-yellow-600 text-black py-2 px-4 rounded transition-colors">Go</a>
        </div>

        <div class="bg-gray-800 border border-yellow-500 rounded-lg shadow-lg p-6 hover:shadow-yellow-400 transition-shadow duration-300">
            <h2 class="text-xl font-semibold text-yellow-300 mb-4">Add Instructor</h2>
            <p class="text-gray-300 mb-4">Add new driving instructors to the system.</p>
            <a href="addInstructor.jsp" class="inline-block bg-yellow-500 hover:bg-yellow-600 text-black py-2 px-4 rounded transition-colors">Add</a>
        </div>

        <div class="bg-gray-800 border border-yellow-500 rounded-lg shadow-lg p-6 hover:shadow-yellow-400 transition-shadow duration-300">
            <h2 class="text-xl font-semibold text-yellow-300 mb-4">View Instructors</h2>
            <p class="text-gray-300 mb-4">Check and manage instructor details.</p>
            <a href="viewInstructors.jsp" class="inline-block bg-yellow-500 hover:bg-yellow-600 text-black py-2 px-4 rounded transition-colors">View</a>
        </div>

        <div class="bg-gray-800 border border-yellow-500 rounded-lg shadow-lg p-6 hover:shadow-yellow-400 transition-shadow duration-300">
            <h2 class="text-xl font-semibold text-yellow-300 mb-4">Lesson Requests</h2>
            <p class="text-gray-300 mb-4">View student lesson bookings and schedule.</p>
            <a href="viewLessonRequests.jsp" class="inline-block bg-yellow-500 hover:bg-yellow-600 text-black py-2 px-4 rounded transition-colors">View</a>
        </div>

    </div>
</div>

<!-- Footer -->
<footer class="bg-gray-800 text-center py-4 mt-auto text-gray-400">
    &copy; 2025 Driving School. All rights reserved.
</footer>

</body>
</html>
