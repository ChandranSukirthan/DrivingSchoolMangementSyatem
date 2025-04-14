package com.driveschool.util;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import com.driveschool.model.Instructor;
import com.driveschool.model.Lesson;
import com.driveschool.model.Student;
import jakarta.servlet.ServletContext;
import java.io.*;
import java.util.ArrayList;


public class FileUtil {
    private final String STUDENT_FILE_PATH;
    private final String INSTRUCTOR_FILE_PATH;
    private final String LESSON_REQUEST_FILE_PATH;
    private final String SCHEDULED_LESSONS_FILE_PATH;

    public FileUtil(ServletContext context) {
        String dataDir = context.getRealPath("/data");
        this.STUDENT_FILE_PATH = dataDir + "/students.txt";
        this.INSTRUCTOR_FILE_PATH = dataDir + "/instructors.txt";
        this.LESSON_REQUEST_FILE_PATH = dataDir + "/lessonRequests.txt";
        this.SCHEDULED_LESSONS_FILE_PATH = dataDir + "/scheduledLessons.txt";

        initializeFile(STUDENT_FILE_PATH);
        initializeFile(INSTRUCTOR_FILE_PATH);
        initializeFile(LESSON_REQUEST_FILE_PATH);
        initializeFile(SCHEDULED_LESSONS_FILE_PATH);
    }

    private void initializeFile(String filePath) {
        File file = new File(filePath);
        try {
            if (!file.exists()) {
                file.getParentFile().mkdirs(); // Create the parent directory if it doesn't exist
                file.createNewFile(); // Create the file if it doesn't exist
            }
        } catch (IOException e) {
            throw new RuntimeException("Failed to create file: " + filePath, e);
        }
    }

    // Methods for Students
    public void createStudent(Student student) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(STUDENT_FILE_PATH, true))) {
            writer.write(student.toFileString());
            writer.newLine();
        }
    }

    public List<Student> readStudents() throws IOException {
        List<Student> students = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(STUDENT_FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (!line.trim().isEmpty()) {
                    Student student = new Student("", "", "");
                    student.fromFileString(line);
                    students.add(student);
                }
            }
        }
        return students;
    }

    public void updateStudent(Student updatedStudent) throws IOException {
        List<Student> students = readStudents();
        List<Student> updatedList = new ArrayList<>();
        for (Student student : students) {
            if (student.getId().equals(updatedStudent.getId())) {
                updatedList.add(updatedStudent);
            } else {
                updatedList.add(student);
            }
        }
        rewriteFile(STUDENT_FILE_PATH, updatedList);
    }

    public void deleteStudent(String username) throws IOException {
        List<Student> students = readStudents();
        students.removeIf(student -> student.getId().equals(username));
        rewriteFile(STUDENT_FILE_PATH, students);
    }

    // Methods for Instructors
    public void createInstructor(Instructor instructor) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(INSTRUCTOR_FILE_PATH, true))) {
            writer.write(instructor.toFileString());
            writer.newLine();
        }
    }

    public List<Instructor> readInstructors() throws IOException {
        List<Instructor> instructors = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(INSTRUCTOR_FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (!line.trim().isEmpty()) {
                    Instructor instructor = new Instructor("", "", "", 0);
                    instructor.fromFileString(line);
                    instructors.add(instructor);
                }
            }
        }
        return instructors;
    }

    // Methods for Lesson Requests
    public void addLessonRequest(String request) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(LESSON_REQUEST_FILE_PATH, true))) {
            writer.write(request);
            writer.newLine();
        }
    }

    public List<String> readLessonRequests() throws IOException {
        List<String> requests = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(LESSON_REQUEST_FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (!line.trim().isEmpty()) {
                    requests.add(line);
                }
            }
        }
        return requests;
    }
    public void removeLessonRequest(String request) throws IOException {
        List<String> requests = readLessonRequests();
        requests.removeIf(req -> req.trim().equals(request.trim()));

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(LESSON_REQUEST_FILE_PATH))) {
            for (String req : requests) {
                writer.write(req);
                writer.newLine();
            }
        }
    }


    // Methods for Scheduled Lessons
    public void scheduleLesson(Lesson lesson) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(SCHEDULED_LESSONS_FILE_PATH, true))) {
            writer.write(lesson.toFileString());
            writer.newLine();
        }
    }

    public List<Lesson> readScheduledLessons() throws IOException {
        List<Lesson> lessons = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(SCHEDULED_LESSONS_FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (!line.trim().isEmpty()) {
                    Lesson lesson = Lesson.fromFileString(line);
                    if (lesson != null) {
                        lessons.add(lesson);
                    }
                }
            }
        }
        return lessons;
    }

    // Helper method to rewrite the student file
    private void rewriteFile(String filePath, List<Student> students) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            for (Student student : students) {
                writer.write(student.toFileString());
                writer.newLine();
            }
        }
    }

    // Additional helper method to rewrite the instructor file (if needed for future updates)
    private void rewriteInstructorFile(String filePath, List<Instructor> instructors) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            for (Instructor instructor : instructors) {
                writer.write(instructor.toFileString());
                writer.newLine();
            }
        }
    }
    public void deleteLesson(String studentUsername, String instructorName, String lessonDate) throws IOException {
        List<Lesson> lessons = readScheduledLessons();
        lessons.removeIf(lesson -> lesson.getStudentUsername().equals(studentUsername)
                && lesson.getInstructorName().equals(instructorName)
                && lesson.getDate().equals(lessonDate));
        rewriteScheduledLessonsFile(SCHEDULED_LESSONS_FILE_PATH, lessons);
    }

    private void rewriteScheduledLessonsFile(String filePath, List<Lesson> lessons) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            for (Lesson lesson : lessons) {
                writer.write(lesson.toFileString());
                writer.newLine();
            }
        }
    }
    public void deleteInstructor(String name) throws IOException {
        List<Instructor> instructors = readInstructors();
        instructors.removeIf(instructor -> instructor.getName().equalsIgnoreCase(name));
        rewriteInstructorFile(INSTRUCTOR_FILE_PATH, instructors);
    }


}
