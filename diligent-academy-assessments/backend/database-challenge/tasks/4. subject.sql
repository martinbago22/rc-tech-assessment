CREATE TABLE subject (
    subject_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER,
    subject_id INTEGER,
    grade INTEGER,
    CONSTRAINT fk_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_subject
        FOREIGN KEY (subject_id)
        REFERENCES subject(subject_id)
        ON DELETE CASCADE 
);

INSERT INTO subject (name)
VALUES
('Algebra'),
('Biology'),
('World History');

INSERT INTO enrollment (student_id, subject_id, grade)
VALUES 
((SELECT student_id FROM student WHERE name = 'John'), (SELECT subject_id FROM subject WHERE name = 'Algebra'), 3),
((SELECT student_id FROM student WHERE name = 'John'), (SELECT subject_id FROM subject WHERE name = 'Biology'), 2),
((SELECT student_id FROM student WHERE name = 'John'), (SELECT subject_id FROM subject WHERE name = 'World History'), 5),
((SELECT student_id FROM student WHERE name = 'Adam'), (SELECT subject_id FROM subject WHERE name = 'Algebra'), 4),
((SELECT student_id FROM student WHERE name = 'Adam'), (SELECT subject_id FROM subject WHERE name = 'Biology'), 3),
((SELECT student_id FROM student WHERE name = 'Adam'), (SELECT subject_id FROM subject WHERE name = 'World History'), 2),
((SELECT student_id FROM student WHERE name = 'Lucy'), (SELECT subject_id FROM subject WHERE name = 'Algebra'), 5),
((SELECT student_id FROM student WHERE name = 'Lucy'), (SELECT subject_id FROM subject WHERE name = 'Biology'), 4),
((SELECT student_id FROM student WHERE name = 'Lucy'), (SELECT subject_id FROM subject WHERE name = 'World History'), 3);
