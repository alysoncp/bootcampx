SELECT cohorts.name, COUNT(cohort_id) FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(cohort_id) >= 18
ORDER BY COUNT(cohort_id);