SELECT students.name, AVG(duration) AS average 
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average DESC;
