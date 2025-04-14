<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="com.driveschool.model.Lesson" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Lessons - Driving School</title>
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Porsche-style font -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
    <style>
        body, h1, h2, h3, h4, h5, h6, a, button, td, th {
            font-family: 'Orbitron', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-50 font-sans min-h-screen flex flex-col">
<!-- Navigation -->
<nav class="bg-gradient-to-r from-black to-red-800 shadow-lg">
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
                <a href="viewInstructors01.jsp" class="px-3 py-2 rounded-md text-base font-medium text-white hover:bg-red-700">Instructors</a>
                <a href="scheduleLesson.jsp" class="px-3 py-2 rounded-md text-base font-medium text-white hover:bg-red-700">Schedule My Lesson</a>
                <a href="aboutyou.jsp" class="px-3 py-2 rounded-md text-base font-medium text-white hover:bg-red-700">About You</a>
                <a href="dashboard.jsp" class="px-3 py-2 rounded-md text-base font-medium text-white hover:bg-red-700">Back</a>
            </div>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main class="flex-grow">
    <div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
        <div class="bg-white rounded-xl shadow-lg overflow-hidden">
            <div class="px-6 py-4 bg-gradient-to-r from-red-700 to-black">
                <h2 class="text-2xl font-bold text-white">My Scheduled Lessons</h2>
            </div>

            <div class="p-6">
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-black text-white">
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-medium uppercase tracking-wider">Instructor</th>
                            <th class="px-6 py-3 text-left text-xs font-medium uppercase tracking-wider">Date</th>
                            <th class="px-6 py-3 text-left text-xs font-medium uppercase tracking-wider">Action</th>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                        <%
                            FileUtil fileUtil = new FileUtil(application);
                            List<Lesson> lessons = fileUtil.readScheduledLessons();
                            String currentUser = (String) session.getAttribute("username");
                            boolean hasLessons = false;

                            for (Lesson lesson : lessons) {
                                if (lesson.getStudentUsername().equals(currentUser)) {
                                    hasLessons = true;
                        %>
                        <tr class="hover:bg-gray-100">
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%= lesson.getInstructorName() %></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%= lesson.getDate() %></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-right">
                                <form action="DeleteLessonServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this lesson?');">
                                    <input type="hidden" name="studentUsername" value="<%= lesson.getStudentUsername() %>"/>
                                    <input type="hidden" name="instructorName" value="<%= lesson.getInstructorName() %>"/>
                                    <input type="hidden" name="lessonDate" value="<%= lesson.getDate() %>"/>
                                    <button type="submit" class="bg-red-600 hover:bg-black text-white font-semibold py-1 px-4 rounded-full shadow transition duration-300">
                                        Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <%
                                }
                            }

                            if (!hasLessons) {
                        %>
                        <tr>
                            <td colspan="3" class="px-6 py-4 whitespace-nowrap text-sm text-gray-900 text-center">No scheduled lessons found.</td>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>

                <div class="mt-6 flex justify-center space-x-4">
                    <a href="scheduleLesson.jsp" class="inline-flex items-center px-4 py-2 text-sm font-medium rounded-md shadow-sm text-white bg-red-700 hover:bg-black transition-colors">
                        Schedule a New Lesson
                        <svg xmlns="http://www.w3.org/2000/svg" class="ml-2 h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                        </svg>
                    </a>
                    <a href="dashboard.jsp" class="inline-flex items-center px-4 py-2 text-sm font-medium rounded-md shadow-sm text-white bg-gray-600 hover:bg-black transition-colors">
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
<footer class="bg-gradient-to-r from-black to-red-800 text-white py-6">
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
                <p class="text-sm">© 2025 Driving School. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>