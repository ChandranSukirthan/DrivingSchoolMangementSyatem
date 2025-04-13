<%@ page import="com.driveschool.model.Student" %>
<%@ page import="com.driveschool.util.FileUtil" %>
<%@ page import="java.util.List" %>

<%
  String username = (String) session.getAttribute("username");
  if (username == null) {
    response.sendRedirect("login.jsp");
    return;
  }

  FileUtil fileUtil = new FileUtil(application); // 'application' is ServletContext
  List<Student> students = fileUtil.readStudents();
  Student student = null;

  for (Student s : students) {
    if (s.getUsername().equals(username)) {
      student = s;
      break;
    }
  }

  if (student == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About You - Driving School</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #333;
      color: white;
      font-family: Arial, sans-serif;
    }

    .container {
      margin-top: 50px;
      background: rgba(0, 0, 0, 0.7);
      padding: 30px;
      border-radius: 10px;
    }

    h2 {
      color: #f9c846; /* Porsche Yellow */
    }

    .btn {
      background-color: #f9c846;
      color: #333;
      padding: 10px 20px;
      border-radius: 5px;
      font-weight: bold;
      text-decoration: none;
    }

    .btn:hover {
      background-color: #e0b33d;
    }
  </style>
</head>
<body>

<div class="container">
  <h2>About You</h2>
  <p><strong>Username:</strong> <%= student.getUsername() %></p>
  <p><strong>Package Type:</strong> <%= student.getUserType() %></p>
  <a href="dashboard.jsp" class="btn">Back</a>
</div>

</body>
</html>
