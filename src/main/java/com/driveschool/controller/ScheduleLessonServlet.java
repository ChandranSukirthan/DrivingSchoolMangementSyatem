package com.driveschool.controller;

import com.driveschool.model.Lesson;
import com.driveschool.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ScheduleLessonServlet")
public class ScheduleLessonServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String studentUsername = request.getParameter("studentUsername");
        String instructorName = request.getParameter("instructorName");
        String date = request.getParameter("date");

        Lesson lesson = new Lesson(studentUsername, instructorName, date);
        FileUtil fileUtil = new FileUtil(getServletContext());
        fileUtil.scheduleLesson(lesson);

        response.sendRedirect("viewStudentLessons.jsp");
    }
}