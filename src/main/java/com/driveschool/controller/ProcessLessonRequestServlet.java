package com.driveschool.controller;

import com.driveschool.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ProcessLessonRequestServlet")
public class ProcessLessonRequestServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Verify user is logged in and an Hannah
        if (request.getSession().getAttribute("username") == null || !"admin".equals(request.getSession().getAttribute("role"))) {
            response.sendRedirect("login.jsp");
            return;
        }

        String requestData = request.getParameter("request");
        if (requestData != null && !requestData.isEmpty()) {
            FileUtil fileUtil = new FileUtil(getServletContext());
            try {
                fileUtil.removeLessonRequest(requestData);
                response.sendRedirect("viewLessonRequests.jsp");
            } catch (IOException e) {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error processing request");
            }
        } else {
            response.sendRedirect("viewLessonRequests.jsp");
        }
    }
}