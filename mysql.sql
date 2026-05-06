-- Drop old tables
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT
);

-- Create courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL
);

-- Create enrollments table (Foreign Key)
CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert data
INSERT INTO students (name, email, age) VALUES
('Vishal', 'vishal@gmail.com', 20),
('Rahul', 'rahul@gmail.com', 21);

INSERT INTO courses (course_name) VALUES
('DBMS'),
('Maths');

INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1),
(2, 2);

-- ALTER example (add column)
ALTER TABLE students
ADD phone VARCHAR(15);
