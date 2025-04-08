package com.driveschool.util;

import com.driveschool.model.Student;
import jakarta.servlet.ServletContext;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class FileUtil {
    private final String STUDENT_FILE_PATH;

    public FileUtil(ServletContext context) {
        String dataDir = context.getRealPath("/data");
        this.STUDENT_FILE_PATH = dataDir + "/students.txt";
        initializeFile(STUDENT_FILE_PATH);
    }

    private void initializeFile(String filePath) {
        File file = new File(filePath);
        try {
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
        } catch (IOException e) {
            throw new RuntimeException("Failed to create file: " + filePath, e);
        }
    }

    // Create
    public void createStudent(Student student) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(STUDENT_FILE_PATH, true))) {
            writer.write(student.toFileString());
            writer.newLine();
        }
    }

    // Read
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

    // Update
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

    // Delete
    public void deleteStudent(String username) throws IOException {
        List<Student> students = readStudents();
        students.removeIf(student -> student.getId().equals(username));
        rewriteFile(STUDENT_FILE_PATH, students);
    }

    private void rewriteFile(String filePath, List<Student> students) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            for (Student student : students) {
                writer.write(student.toFileString());
                writer.newLine();
            }
        }
    }
}