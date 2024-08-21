SELECT s.name AS student_name
FROM student s
JOIN homeroom h ON s.homeroom_id = h.homeroom_id
WHERE h.name = '9A';