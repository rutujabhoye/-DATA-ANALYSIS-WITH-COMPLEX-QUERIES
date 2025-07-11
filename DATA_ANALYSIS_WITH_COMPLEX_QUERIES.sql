-- Create tables

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_title VARCHAR(100)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    progress_percent INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample students

INSERT INTO students VALUES 
(1, 'Rutuja'),
(2, 'Aman'),
(3, 'Soham'),
(4, 'Priya'),
(5, 'Neha');

-- Insert sample courses

INSERT INTO courses VALUES 
(101, 'SQL Basics'),
(102, 'Advanced SQL'),
(103, 'Python'),
(104, 'Data Science');

-- Insert sample enrollments

INSERT INTO enrollments VALUES
(1, 1, 101, '2025-06-01', 80),
(2, 1, 102, '2025-06-10', 60),
(3, 2, 101, '2025-06-05', 40),
(4, 2, 103, '2025-06-12', 30),
(5, 3, 104, '2025-06-20', 90),
(6, 3, 102, '2025-06-25', 70),
(7, 4, 101, '2025-06-07', 50),
(8, 5, 103, '2025-06-18', 20),
(9, 5, 104, '2025-06-21', 60);

-- 1. Find courses where more than 50% of students have progress < 50%

WITH course_low_engagement AS (
    SELECT 
        c.course_title,
        COUNT(e.enrollment_id) AS total_students,
        SUM(CASE WHEN e.progress_percent < 50 THEN 1 ELSE 0 END) AS low_count
    FROM enrollments e
    JOIN courses c ON e.course_id = c.course_id
    GROUP BY c.course_title
)
SELECT 
    course_title,
    total_students,
    low_count,
    ROUND((low_count / total_students) * 100, 2) AS low_percent
FROM course_low_engagement
WHERE (low_count / total_students) > 0.5;

-- 2. Monthly enrollments (using GROUP BY and DATE_FORMAT)

SELECT 
    DATE_FORMAT(enrollment_date, '%Y-%m') AS month,
    COUNT(*) AS total_enrollments
FROM enrollments
GROUP BY month
ORDER BY month;

-- 3. Top 3 students by average progress (using CTE + RANK window function)

WITH student_avg AS (
    SELECT 
        s.student_id,
        s.student_name,
        ROUND(AVG(e.progress_percent), 2) AS avg_progress
    FROM students s
    JOIN enrollments e ON s.student_id = e.student_id
    GROUP BY s.student_id, s.student_name
)
SELECT 
    student_name,
    avg_progress,
    RANK() OVER (ORDER BY avg_progress DESC) AS rank_position
FROM student_avg
LIMIT 3;

-- 4. Rank courses by progress for each student (PARTITION BY student_id)

SELECT 
    s.student_name,
    c.course_title,
    e.progress_percent,
    RANK() OVER (PARTITION BY s.student_id ORDER BY e.progress_percent DESC) AS course_rank
FROM enrollments e
JOIN students s ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id
ORDER BY s.student_name;

-- 5. For each student, show the course with the lowest progress

SELECT 
    s.student_id,
    s.student_name,
    (
        SELECT c.course_title
        FROM enrollments e2
        JOIN courses c ON c.course_id = e2.course_id
        WHERE e2.student_id = s.student_id
        ORDER BY e2.progress_percent ASC
        LIMIT 1
    ) AS lowest_progress_course
FROM students s;
