<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - DriveWise Academy</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #e43e31; /* Porsche Yellow */
            --secondary-color: #333; /* Black background color */
            --text-color: #fff; /* White text color */
        }

        body {
            background-color: var(--secondary-color);
            background-size: cover;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: var(--text-color);
            margin: 0;
        }

        .navbar {
            background-color: var(--secondary-color);
            padding: 15px;
            text-align: center;
        }

        .navbar a {
            color: var(--text-color);
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }

        .navbar a:hover {
            text-decoration: underline;
            color: var(--primary-color); /* Yellow on hover */
        }

        .auth-container {
            min-height: calc(100vh - 60px); /* Adjust for navbar height */
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }

        .auth-card {
            background: rgba(0, 0, 0, 0.8); /* Dark card with subtle transparency */
            border-radius: 20px;
            padding: 3rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            max-width: 400px;
            margin: 0 auto;
        }

        .auth-card h2 {
            color: var(--primary-color); /* Porsche Yellow */
            font-size: 2rem;
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 700;
        }

        .auth-form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .form-group {
            position: relative;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.8);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            padding: 1rem;
            font-size: 1rem;
            color: var(--secondary-color);
            transition: all 0.3s ease;
        }

        .form-control:focus {
            background: white;
            border-color: var(--primary-color); /* Yellow border on focus */
            box-shadow: 0 0 0 0.2rem rgba(249, 200, 70, 0.25);
        }

        .form-label {
            position: absolute;
            top: 1rem;
            left: 1rem;
            color: #6c757d;
            transition: all 0.3s ease;
            pointer-events: none;
        }

        .form-control:focus + .form-label,
        .form-control.filled + .form-label {
            top: -0.5rem;
            left: 1rem;
            font-size: 0.8rem;
            color: var(--primary-color); /* Yellow label when focused */
        }

        .btn-primary {
            background-color: var(--primary-color);
            padding: 1rem 2rem;
            border-radius: 25px;
            font-weight: 600;
            font-size: 1.1rem;
            border: none;
            transition: all 0.3s ease;
            color: var(--secondary-color);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(249, 200, 70, 0.3); /* Hover effect */
            color: var(--secondary-color);
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 1rem;
        }

        .auth-footer {
            text-align: center;
            margin-top: 2rem;
        }

        .auth-footer a {
            color: var(--primary-color); /* Yellow links */
            text-decoration: none;
            font-weight: 600;
        }

        .auth-footer a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            .auth-card {
                padding: 2rem;
            }

            .auth-card h2 {
                font-size: 1.75rem;
            }

            .form-control {
                padding: 0.75rem;
            }

            .btn-primary {
                padding: 0.75rem 1.5rem;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">DriveWise Academy</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">🏠︎ Home</a></li>
                <li class="nav-item"><a class="nav-link" href="aboutus.jsp">ⓘ About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.jsp">☎ Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="admin.jsp"> ⚙ Admin</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="auth-container">
    <div class="auth-card">
        <h2>Admin Login</h2>
        <form class="auth-form" action="AdminLoginServlet" method="post">
        <div class="form-group">
                <input type="text" class="form-control" id="username" name="username" placeholder=" " required>
                <label for="username" class="form-label">Username</label>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" placeholder=" " required>
                <label for="password" class="form-label">Password</label>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <% if (request.getParameter("error") != null) { %>
            <p class="error"><%= request.getParameter("error") %></p>
            <% } %>
        </form>
    </div>
</div>

<!-- JavaScript for floating label effect -->
<script>
    document.querySelectorAll('.form-control').forEach(input => {
        input.addEventListener('input', function() {
            if (this.value) {
                this.classList.add('filled');
            } else {
                this.classList.remove('filled');
            }
        });
        // Check on page load in case of pre-filled values
        if (input.value) {
            input.classList.add('filled');
        }
    });
</script>
</body>
</html>
