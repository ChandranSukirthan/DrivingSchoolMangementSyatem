<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="com.driveschool.model.Instructor" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Instructors - Driving School</title>
    <script src="https://cdn.tailwindcss.com"></script>
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
                <a href="dashboard.jsp" class="bg-emerald-800 text-white px-3 py-2 rounded-md text-sm font-medium">Home</a>
                <a href="manageUsers.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">Manage Users</a>
                <a href="addInstructor.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">Add Instructor</a>
                <a href="viewInstructors.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">View Instructors</a>
                <a href="scheduleLesson.jsp" class="text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium transition-colors">Schedule Lesson</a>
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
            <a href="dashboard.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-white bg-emerald-900">Home</a>
            <a href="manageUsers.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Manage Users</a>
            <a href="addInstructor.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Add Instructor</a>
            <a href="viewInstructors.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">View Instructors</a>
            <a href="scheduleLesson.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Schedule Lesson</a>
            <a href="viewLessonRequests.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Lesson Requests</a>
            <a href="LogoutServlet" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Logout</a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main class="flex-grow">
    <div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
        <div class="bg-white rounded-xl shadow-lg overflow-hidden">
            <!-- Header -->
            <div class="px-6 py-4 bg-gradient-to-r from-emerald-600 to-teal-600">
                <h2 class="text-2xl font-bold text-white">Instructor List</h2>
            </div>

            <!-- Table -->
            <div class="p-6">
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Contact</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Availability</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Experience (Years)</th>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                        <%
                            FileUtil fileUtil = new FileUtil(application);
                            List<Instructor> instructors = new ArrayList<>(fileUtil.readInstructors());

                            // Bubble Sort by experience (descending order)
                            for (int i = 0; i < instructors.size() - 1; i++) {
                                for (int j = 0; j < instructors.size() - i - 1; j++) {
                                    if (instructors.get(j).getExperience() < instructors.get(j + 1).getExperience()) {
                                        Instructor temp = instructors.get(j);
                                        instructors.set(j, instructors.get(j + 1));
                                        instructors.set(j + 1, temp);
                                    }
                                }
                            }

                            for (Instructor instructor : instructors) {
                        %>
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%= instructor.getName() %></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%= instructor.getContact() %></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%= instructor.getAvailability() %></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%= instructor.getExperience() %></td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table>
                </div>
                <div class="mt-6 flex justify-center space-x-4">
                    <a href="addInstructor.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-emerald-600 hover:bg-emerald-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-emerald-500 transition-colors">
                        Add New Instructor
                        <svg xmlns="http://www.w3.org/2000/svg" class="ml-2 h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                        </svg>
                    </a>
                    <a href="dashboard.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-gray-600 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500 transition-colors">
                        Back to Dashboard
                        <svg xmlns="http://www.w3.org/2000/svg" class="ml-2 h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
                        </svg>
                    </a>
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