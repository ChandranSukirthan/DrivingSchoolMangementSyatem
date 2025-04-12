<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Instructor - Driving School</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8fafc;
        }
        .form-input {
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .form-input:focus {
            box-shadow: 0 0 0 3px rgba(16, 185, 129, 0.25);
        }
        .nav-link {
            position: relative;
        }
        .nav-link:after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: 0;
            left: 0;
            background-color: #ffffff;
            transition: width 0.3s ease;
        }
        .nav-link:hover:after {
            width: 100%;
        }
        .active-nav:after {
            width: 100%;
        }
    </style>
</head>
<body class="min-h-screen">

<!-- Navigation -->
<nav class="bg-gradient-to-r from-emerald-700 to-teal-700 shadow-xl">
    <div class="max-w-8xl mx-auto px-6">
        <div class="flex justify-between h-20 items-center">
            <div class="flex items-center">
                <div class="flex-shrink-0 flex items-center">
                    <svg class="h-8 w-8 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                    </svg>
                    <span class="ml-2 text-white text-2xl font-bold">DriveWise Admin</span>
                </div>
            </div>
            <div class="hidden lg:flex items-center space-x-8">
                <a href="dashboard.jsp" class="nav-link text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium">Home</a>
                <a href="manageUsers.jsp" class="nav-link text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium">Manage Users</a>
                <a href="addInstructor.jsp" class="nav-link active-nav text-white px-3 py-2 text-sm font-medium">Add Instructor</a>
                <a href="viewInstructors.jsp" class="nav-link text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium">View Instructors</a>
                <a href="scheduleLesson.jsp" class="nav-link text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium">Schedule Lesson</a>
                <a href="viewLessonRequests.jsp" class="nav-link text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium">Lesson Requests</a>
                <a href="LogoutServlet" class="flex items-center text-emerald-100 hover:text-white px-3 py-2 text-sm font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                    </svg>
                    Logout
                </a>
            </div>
            <div class="lg:hidden flex items-center">
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
    <div class="lg:hidden hidden" id="mobile-menu">
        <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3 bg-emerald-800">
            <a href="dashboard.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Home</a>
            <a href="manageUsers.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Manage Users</a>
            <a href="addInstructor.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-white bg-emerald-900">Add Instructor</a>
            <a href="viewInstructors.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">View Instructors</a>
            <a href="scheduleLesson.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Schedule Lesson</a>
            <a href="viewLessonRequests.jsp" class="block px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">Lesson Requests</a>
            <a href="LogoutServlet" class="flex items-center px-3 py-2 rounded-md text-base font-medium text-emerald-100 hover:text-white hover:bg-emerald-700">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                </svg>
                Logout
            </a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="max-w-5xl mx-auto py-10 px-4 sm:px-6 lg:px-8">
    <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-100">
        <!-- Header -->
        <div class="px-8 py-6 bg-gradient-to-r from-emerald-600 to-teal-600">
            <div class="flex items-center justify-between">
                <h2 class="text-2xl font-bold text-white">Add New Instructor</h2>
                <div class="flex space-x-3">
                    <a href="viewInstructors.jsp" class="flex items-center px-4 py-2 bg-white bg-opacity-20 rounded-lg text-sm font-medium text-white hover:bg-opacity-30 transition-all">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                        </svg>
                        View Instructors
                    </a>
                    <a href="dashboard.jsp" class="flex items-center px-4 py-2 bg-white bg-opacity-20 rounded-lg text-sm font-medium text-white hover:bg-opacity-30 transition-all">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                        </svg>
                        Dashboard
                    </a>
                </div>
            </div>
        </div>

        <!-- Form -->
        <div class="px-8 py-8">
            <form action="AddInstructorServlet" method="post" class="space-y-6">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div>
                        <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
                        <div class="relative">
                            <input type="text" id="name" name="name" required
                                   class="form-input block w-full rounded-lg border-gray-300 shadow-sm py-3 px-4 focus:border-emerald-500 focus:ring-emerald-500 placeholder-gray-400">
                            <div class="absolute inset-y-0 right-0 flex items-center pr-3 pointer-events-none">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                                </svg>
                            </div>
                        </div>
                    </div>

                    <div>
                        <label for="contact" class="block text-sm font-medium text-gray-700 mb-1">Contact Number</label>
                        <div class="relative">
                            <input type="text" id="contact" name="contact" required
                                   class="form-input block w-full rounded-lg border-gray-300 shadow-sm py-3 px-4 focus:border-emerald-500 focus:ring-emerald-500 placeholder-gray-400">
                            <div class="absolute inset-y-0 right-0 flex items-center pr-3 pointer-events-none">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                </svg>
                            </div>
                        </div>
                    </div>

                    <div>
                        <label for="availability" class="block text-sm font-medium text-gray-700 mb-1">Availability</label>
                        <div class="relative">
                            <select id="availability" name="availability"
                                    class="form-input block w-full rounded-lg border-gray-300 shadow-sm py-3 px-4 focus:border-emerald-500 focus:ring-emerald-500 appearance-none">
                                <option value="Available">Available</option>
                                <option value="Unavailable">Unavailable</option>
                            </select>
                            <div class="absolute inset-y-0 right-0 flex items-center pr-3 pointer-events-none">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                </svg>
                            </div>
                        </div>
                    </div>

                    <div>
                        <label for="experience" class="block text-sm font-medium text-gray-700 mb-1">Experience (Years)</label>
                        <div class="relative">
                            <input type="number" id="experience" name="experience" required
                                   class="form-input block w-full rounded-lg border-gray-300 shadow-sm py-3 px-4 focus:border-emerald-500 focus:ring-emerald-500 placeholder-gray-400">
                            <div class="absolute inset-y-0 right-0 flex items-center pr-3 pointer-events-none">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="pt-6">
                    <button type="submit"
                            class="w-full flex justify-center items-center py-3 px-6 border border-transparent rounded-lg shadow-sm text-lg font-medium text-white bg-gradient-to-r from-emerald-600 to-teal-600 hover:from-emerald-700 hover:to-teal-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-emerald-500 transition-all">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                        </svg>
                        Add Instructor
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

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