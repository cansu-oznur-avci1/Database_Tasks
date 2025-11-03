--GROUP BY
--Used to group similar records.
--For example, how many courses are each student enrolled in?

SELECT S.student_name, COUNT(E.course_id) AS Total_Courses
FROM Students S
JOIN Enrollments E ON S.student_id = E.student_id
GROUP BY S.student_name;


--WHERE
--It performs the filtering process before creating a group.
--For example, students in courses that only start with "CNG"

SELECT S.student_name, COUNT(E.course_id) AS CNG_Courses
FROM Students S
JOIN Enrollments E ON S.student_id = E.student_id
JOIN Courses C ON E.course_id = C.course_id
WHERE C.course_id LIKE 'CNG%'
GROUP BY S.student_name;


--HAVING
--Performs filtering after grouping.
--WHERE works on a row-by-row basis, while HAVING works on groups.
--For example, students enrolled in more than 2 courses

SELECT S.student_name, COUNT(E.course_id) AS Total_Courses
FROM Students S
JOIN Enrollments E ON S.student_id = E.student_id
GROUP BY S.student_name
HAVING COUNT(E.course_id) > 2;
