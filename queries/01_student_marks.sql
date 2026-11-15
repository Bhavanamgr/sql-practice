-- Student Marks: create a table, insert data and run basic queries

CREATE DATABASE IF NOT EXISTS practice_db;
USE practice_db;

CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    course VARCHAR(30) NOT NULL,
    marks INT NOT NULL
);

INSERT INTO students (name, course, marks) VALUES
('Asha', 'BCA', 82),
('Ravi', 'BCA', 67),
('Meena', 'BBA', 91),
('Kiran', 'BCA', 55),
('Divya', 'BBA', 74);

-- 1. View all students
SELECT * FROM students;

-- 2. Students who scored above 70
SELECT name, marks FROM students WHERE marks > 70;

-- 3. Students sorted by marks, highest first
SELECT name, marks FROM students ORDER BY marks DESC;

-- 4. Average marks per course
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;

-- 5. Topper of the class
SELECT name, marks FROM students ORDER BY marks DESC LIMIT 1;
