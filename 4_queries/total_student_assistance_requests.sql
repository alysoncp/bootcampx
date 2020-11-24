SELECT COUNT(assistance_requests.*), students.name 
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE name='Elliot Dickinson'
GROUP BY students.name;