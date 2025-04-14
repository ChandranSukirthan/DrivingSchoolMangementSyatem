package com.driveschool.controller;

import com.driveschool.model.Instructor;
import com.driveschool.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddInstructorServlet")
public class AddInstructorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String availability = request.getParameter("availability");
        int experience = Integer.parseInt(request.getParameter("experience"));

        Instructor instructor = new Instructor(name, contact, availability, experience);
        FileUtil fileUtil = new FileUtil(getServletContext());
        fileUtil.createInstructor(instructor);

        response.sendRedirect("viewInstructors.jsp");
    }
}