package com.driveschool.controller;

import com.driveschool.model.Student;
import com.driveschool.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchUserServlet")
public class SearchUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        FileUtil fileUtil = new FileUtil(getServletContext());
        List<Student> students = fileUtil.readStudents();
        Student foundStudent = null;
        for (Student student : students) {
            if (student.getUsername().equals(username)) {
                foundStudent = student;
                break;
            }
        }

        request.setAttribute("foundStudent", foundStudent);
        request.getRequestDispatcher("manageUsers.jsp").forward(request, response);
    }
}