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
                <a href="viewInstructors01.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-white bg-emerald-900">Instructors</a>
                <a href="scheduleLesson.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Schedule My Lesson</a>
                <a href="viewStudentLessons.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">My Lessons</a>
                <a href="aboutyou.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">About You</a>
                <a href="dashboard.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Back</a>
            </div>
        </div>
    </div>

    <!-- Mobile menu -->
    <div class="md:hidden hidden" id="mobile-menu">
        <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3 bg-emerald-800">
            <a href="dashboard.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-white bg-emerald-900">Back</a>
            <a href="scheduleLesson.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Schedule Lesson</a>
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