CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    homeroom_id INTEGER,
    CONSTRAINT fk_homeroom
        FOREIGN KEY (homeroom_id)
        REFERENCES homeroom(homeroom_id)
        ON DELETE SET NULL
);

INSERT INTO student (name, email, homeroom_id)
VALUES 
('John', 'john@school.com', (SELECT homeroom_id FROM homeroom WHERE name = '9A')),
('Adam', 'adam@school.com', (SELECT homeroom_id FROM homeroom WHERE name = '9A')),
('Lucy', 'lucy@school.com', (SELECT homeroom_id FROM homeroom WHERE name = '9B'));

