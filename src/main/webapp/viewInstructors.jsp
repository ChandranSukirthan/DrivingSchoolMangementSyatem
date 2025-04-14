<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="com.driveschool.model.Instructor" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Instructors - Driving School</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-black text-white font-sans min-h-screen flex flex-col">

<!-- Navbar -->
<nav class="bg-gradient-to-r from-black to-red-700 shadow-lg">
    <div class="max-w-7xl mx-auto px-4 flex justify-between h-16 items-center">
        <div class="text-white text-2xl font-bold tracking-wide flex items-center space-x-2">
            <span>Drive Wish Academy</span>
        </div>
        <div class="hidden md:flex space-x-6">
            <a href="adminDashboard.jsp" class="hover:text-red-400 transition">Home</a>
            <a href="manageUsers.jsp" class="hover:text-red-400 transition">Manage Users</a>
            <a href="addInstructor.jsp" class="hover:text-red-400 transition">Add Instructor</a>
            <a href="viewInstructors.jsp" class="text-red-400 font-semibold">View Instructors</a>
            <a href="viewLessonRequests.jsp" class="hover:text-red-400 transition">Lesson Requests</a>
            <a href="adminLogoutServlet" class="hover:text-red-400 transition">Logout</a>
        </div>
    </div>
</nav>

<!-- Main -->
<main class="flex-grow py-10 px-4 sm:px-6 lg:px-8">
    <div class="max-w-6xl mx-auto bg-gray-900 rounded-xl shadow-2xl p-6">
        <h2 class="text-3xl font-bold mb-6 border-b border-red-500 pb-2">Instructors</h2>

        <div class="overflow-x-auto">
            <table class="min-w-full bg-black text-white border border-red-600 rounded-lg">
                <thead class="bg-red-800">
                <tr>
                    <th class="py-3 px-6 text-left">Name</th>
                    <th class="py-3 px-6 text-left">Contact</th>
                    <th class="py-3 px-6 text-left">Availability</th>
                    <th class="py-3 px-6 text-left">Experience</th>
                    <th class="py-3 px-6 text-left">Actions</th>
                </tr>
                </thead>
                <tbody class="divide-y divide-red-700">
                <%
                    FileUtil fileUtil = new FileUtil(application);
                    List<Instructor> instructors = new ArrayList<>(fileUtil.readInstructors());

                    // Bubble sort descending by experience
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
                <tr class="hover:bg-red-900/20 transition duration-200">
                    <td class="py-3 px-6"><%= instructor.getName() %></td>
                    <td class="py-3 px-6"><%= instructor.getContact() %></td>
                    <td class="py-3 px-6"><%= instructor.getAvailability() %></td>
                    <td class="py-3 px-6"><%= instructor.getExperience() %> yrs</td>
                    <td class="py-3 px-6">
                        <form method="post" action="DeleteInstructorServlet" onsubmit="return confirm('Are you sure you want to delete this instructor?');">
                            <input type="hidden" name="name" value="<%= instructor.getName() %>">
                            <button type="submit" class="bg-red-600 hover:bg-red-700 text-white text-xs px-4 py-2 rounded transition font-semibold">
                                Delete
                            </button>
                        </form>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>

        <!-- Buttons -->
        <div class="mt-8 flex justify-center gap-6">
            <a href="addInstructor.jsp" class="bg-red-700 hover:bg-red-800 px-6 py-2 rounded shadow text-white font-medium transition">➕ Add Instructor</a>
        </div>
    </div>
</main>

<!-- Footer -->
<footer class="bg-gradient-to-r from-black to-red-700 text-white text-center py-6 mt-10">
    <p class="text-lg font-semibold tracking-wider">🚗 Driving School — Speed Meets Safety</p>
    <p class="text-sm text-red-200">© 2025 All rights reserved. Designed with passion for performance.</p>
</footer>
</body>
</html>
