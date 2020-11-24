SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.student_id)
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.name, assignments.id, assignments.day, assignments.chapter
ORDER BY COUNT(assistance_requests.student_id) DESC;