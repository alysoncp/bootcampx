SELECT students.name, students.start_date, cohorts.name, cohorts.start_date
FROM students 
FULL OUTER JOIN cohorts ON cohort_id = cohorts.id 
WHERE students.start_date != cohorts.start_date;