package com.driveschool.model;

public class LessonRequest {
    private String student;
    private String instructor;
    private String date;

    public LessonRequest(String student, String instructor, String date) {
        this.student = student;
        this.instructor = instructor;
        this.date = date;
    }

    public String getStudent() {
        return student;
    }

    public void setStudent(String student) {
        this.student = student;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return student + "," + instructor + "," + date;
    }

    public static LessonRequest fromString(String data) {
        String[] parts = data.split(",");
        if (parts.length >= 3) {
            return new LessonRequest(parts[0], parts[1], parts[2]);
        }
        return null;
    }
}