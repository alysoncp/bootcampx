SELECT day, COUNT(assignments.name), SUM(duration)  
FROM assignments
GROUP BY day
ORDER BY day;