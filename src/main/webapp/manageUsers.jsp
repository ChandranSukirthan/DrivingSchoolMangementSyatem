<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.driveschool.util.FileUtil, com.driveschool.model.Student, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Users - Driving School</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-blue: #0054fd;
            --secondary-red: #ff0000;
            --light-bg: #ffffff;
            --dark-text: #2c3e50;
            --light-text: #ffffff;
        }

        body {
            font-family: 'Orbitron', sans-serif;
            background-color: var(--light-bg);
            color: var(--dark-text);
            padding: 20px;
        }

        .container {
            background-color: var(--light-bg);
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 84, 253, 0.2);
            margin-bottom: 30px;
        }

        .page-title {
            color: var(--primary-blue);
            text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.8);
            margin-bottom: 25px;
        }

        .search-box {
            border: 1px solid var(--primary-blue);
        }

        .btn-primary-custom {
            background-color: var(--primary-blue);
            border: none;
            color: var(--light-text);
        }

        .btn-primary-custom:hover {
            background-color: #003bb7;
        }

        .btn-danger-custom {
            background-color: var(--secondary-red);
        }

        .nav-link-custom {
            color: var(--primary-blue);
            margin: 0 10px;
            padding: 8px 15px;
            border-radius: 5px;
            transition: all 0.3s;
            border: 1px solid var(--primary-blue);
        }

        .nav-link-custom:hover {
            color: var(--light-text);
            background-color: var(--primary-blue);
            text-decoration: none;
        }

        .table-custom thead {
            background-color: var(--primary-blue);
            color: var(--light-text);
        }

        .table-custom tbody tr {
            background-color: var(--light-bg);
            color: var(--dark-text);
        }

        .table-custom tbody tr:hover {
            background-color: #f8f9fa;
        }

        .search-result-card {
            border-left: 4px solid var(--primary-blue);
        }

        /* Add User Button */
        .btn-add-user {
            background-color: #28a745;
            color: white;
            margin-bottom: 20px;
        }

        .btn-add-user:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Page Header -->
    <header class="mb-5">
        <h2 class="text-center page-title">Manage Users</h2>
    </header>

    <!-- Add User Button -->
    <div class="text-end mb-4">
        <button type="button" class="btn btn-add-user" data-bs-toggle="modal" data-bs-target="#addUserModal">
            <i class="fas fa-user-plus"></i> Add New User
        </button>
    </div>

    <!-- Search Section -->
    <section class="mb-5">
        <form action="SearchUserServlet" method="get" class="row g-3">
            <div class="col-md-9">
                <input type="text" name="username" class="form-control search-box"
                       placeholder="Search by username" required>
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-primary-custom w-100">Search</button>
            </div>
        </form>
    </section>

    <!-- Messages Section -->
    <section class="mb-4">
        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>
        <c:if test="${not empty success}">
            <div class="alert alert-success">${success}</div>
        </c:if>
        <c:if test="${not empty notFound}">
            <div class="alert alert-warning">${notFound}</div>
        </c:if>
    </section>

    <!-- Search Results Section -->
    <c:if test="${not empty foundStudent}">
        <section class="mb-5">
            <div class="card search-result-card">
                <div class="card-header bg-primary text-white">
                    <h5 class="mb-0">Search Result</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <p><strong>Username:</strong> ${foundStudent.username}</p>
                        </div>
                        <div class="col-md-6">
                            <p><strong>User Type:</strong> ${foundStudent.userType}</p>
                        </div>
                    </div>
                    <div class="mt-3">
                        <a href="updateUser.jsp?username=${foundStudent.username}"
                           class="btn btn-warning me-2">Update</a>
                        <a href="DeleteUserServlet?username=${foundStudent.username}"
                           class="btn btn-danger-custom"
                           onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                    </div>
                </div>
            </div>
        </section>
    </c:if>

    <!-- Users Table Section -->
    <section class="mb-5">
        <div class="table-responsive">
            <table class="table table-custom table-bordered table-hover">
                <thead>
                <tr>
                    <th>Username</th>
                    <th>User Type</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <%
                    FileUtil fileUtil = new FileUtil(application);
                    List<Student> students = fileUtil.readStudents();
                    for (Student student : students) {
                %>
                <tr>
                    <td><%= student.getUsername() %></td>
                    <td><%= student.getUserType() %></td>
                    <td>
                        <a href="updateUser.jsp?username=<%= student.getUsername() %>"
                           class="btn btn-sm btn-warning me-2">Update</a>
                        <a href="DeleteUserServlet?username=<%= student.getUsername() %>"
                           class="btn btn-sm btn-danger-custom"
                           onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Navigation Section -->
    <nav class="d-flex flex-wrap justify-content-center">
        <a href="viewInstructors.jsp" class="nav-link-custom m-2">Instructors</a>
        <a href="manageUsers.jsp" class="nav-link-custom m-2">Manage Users</a>
        <a href="addInstructor.jsp" class="nav-link-custom m-2">Add Instructor</a>
        <a href="viewLessonRequests.jsp" class="nav-link-custom m-2">Lesson Requests</a>
        <a href="adminDashboard.jsp" class="nav-link-custom m-2">Dashboard</a>
    </nav>
</div>

<!-- Add User Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="auth-container">
                    <div class="auth-card">
                        <h2>Add Student</h2>
                        <form class="auth-form" action="AddUser" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="username" name="username" required>
                                <label for="username" class="form-label">Username</label>
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control" id="password" name="password" required>
                                <label for="password" class="form-label">Password</label>
                            </div>

                            <div class="form-group">
                                <select class="form-control" id="userType" name="userType" required>
                                    <option value="" disabled selected hidden></option>
                                    <option value="basic">Basic</option>
                                    <option value="standard">Standard</option>
                                    <option value="premium">Premium</option>
                                </select>
                                <label for="userType" class="form-label">User Type</label>
                            </div>
                            <button type="submit" class="btn btn-primary">Register</button>
                        </form>
                    </div>
                </div>
        </div>
    </div>
</div>

<!-- Font Awesome for icons -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>