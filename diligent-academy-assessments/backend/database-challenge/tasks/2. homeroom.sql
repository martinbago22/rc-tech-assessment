CREATE TABLE homeroom (
    homeroom_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE INDEX idx_homeroom_name ON homeroom(name);

INSERT INTO homeroom (name)
VALUES
('9A'),
('9B');