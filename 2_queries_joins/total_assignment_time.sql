SELECT SUM(duration) 
FROM assignment_submissions 
INNER JOIN students ON assignment_submissions.student_id = students.id
WHERE students.name='Ibrahim Schimmel';