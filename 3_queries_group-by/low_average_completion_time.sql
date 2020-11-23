SELECT students.name, AVG(assignment_submissions.duration) AS average, AVG(assignments.duration) AS assign_dur
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY students.name
HAVING  AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average;
