SELECT s.name AS subject_name, AVG(e.grade) AS average_grade
FROM enrollment e
JOIN subject sub ON e.subject_id = sub.subject_id
WHERE sub.name = 'Algebra' 
GROUP BY sub.name;

SELECT s.name AS subject_name, AVG(e.grade) AS average_grade
FROM enrollment e
JOIN subject s ON e.subject_id = s.subject_id
WHERE s.name = 'Algebra'
GROUP BY s.name;
