-- Create the `teacher` table 

CREATE TABLE teacher (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    subject VARCHAR(50) NOT NULL
);


-- Create the `student` table 


CREATE TABLE student (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(50) NOT NULL
);


-- Create the `grades` table 


CREATE TABLE grades (
    id INT NOT NULL PRIMARY KEY,
    grade_name VARCHAR(50) NOT NULL
);


-- Create the `subjects` table


CREATE TABLE subjects (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    full_mark INT NOT NULL,
    fail_mark INT NOT NULL
);


-- Create the `exam_result` table

CREATE TABLE exam_result (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    teacher_id INT NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id),
    FOREIGN KEY (student_id) REFERENCES student(id)
);

