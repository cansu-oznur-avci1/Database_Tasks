--2.Create a table students.
CREATE TABLE Students (
student_id INT PRIMARY KEY,
student_name VARCHAR(30) NOT NULL,
student_surname VARCHAR(20)
);

--3.Create a table courses.
CREATE TABLE Courses (
course_id VARCHAR(10) PRIMARY KEY,
course_name VARCHAR(50) NOT NULL,
course_teacher VARCHAR(30)
);

--4.Create a table enrollments with foreign keys referencing students and courses.
CREATE TABLE Enrollments (
enroll_no INT PRIMARY KEY,
student_id INT,
course_id VARCHAR(10),

FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

--5.Insert at least three records into each table.
INSERT INTO Students (student_id, student_name, student_surname) VALUES
(1111, 'Cansu','AVCI'),
(2222, 'Aleyna', 'AKÖZ'),
(3333, 'Ahmet', 'YILMAZ'),
(4444, 'Mehmet', 'DEMÝR');

INSERT INTO Courses(course_id, course_name, course_teacher)VALUES
('CNG-311','Database Systems and Applications','Zeshan IQBAL'),
('CNG-381','Computer Orgnization','Zeshan IQBAL'),
('CNG-371', 'Software Engineering','Emre YÜKSEK'),
('CNG-361', 'Web Programming', 'Farhan AADÝL'),
('CNG-335','Algorithm Design and Analysis','Sivaram MURUGAN'),
('EEE-331','Digital Signal Processing','Nurbanu GÜZEY'),
('EEE-323','Electrical Plants','Mehmet GÜÇYETMEZ'),
('AEE-405','Design of Machine ELements','Badegül TUNÇAY'),
('AEE-403','Aerial Vehicle Design','Salih Seçkin EROL');

INSERT INTO Enrollments(enroll_no,student_id,course_id) VALUES
(1,1111,'CNG-311'),
(2,1111,'CNG-361'),
(3,1111,'CNG-335'),
(4,2222,'CNG-381'),
(5,2222,'CNG-335'),
(6,2222,'CNG-371'),
(7,3333,'EEE-331'),
(8,3333,'EEE-323'),
(9,3333,'CNG-371'),
(10,4444,'AEE-405'),
(11,4444,'AEE-403'),
(12,4444,'EEE-323');

--6.Perform an INNER JOIN to display only students who are enrolled in courses.
INSERT INTO Students (student_id, student_name, student_surname) VALUES
(5555, 'Ýpek', 'CERAN');

SELECT S.student_id,S.student_name,S.student_surname,
C.course_id,C.course_name,C.course_teacher
FROM Students S
INNER JOIN Enrollments E ON S.student_id=E.student_id
INNER JOIN Courses C ON E.course_id=C.course_id

--7.Perform a LEFT JOIN to display all students, including those not enrolled in any course.
SELECT S.student_id,S.student_name,S.student_surname,
C.course_id,C.course_name,C.course_teacher
FROM Students S
LEFT JOIN Enrollments E ON S.student_id=E.student_id
LEFT JOIN Courses C ON E.course_id=C.course_id

--8.Perform a RIGHT JOIN to display all courses, including those with no enrolled students.
INSERT INTO Courses(course_id,course_name,course_teacher) VALUES
('ME-103','Introduction to Mechanical Engineering','Nazým BABACAN');

SELECT C.course_id, C.course_name,
S.student_id,S.student_name,S.student_surname, E.enroll_no
FROM Students S
RIGHT JOIN Enrollments E ON S.student_id=E.student_id
RIGHT JOIN Courses C ON E.course_id=C.course_id
