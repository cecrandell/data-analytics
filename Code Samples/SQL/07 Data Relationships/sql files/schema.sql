CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    last_name VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL
);

INSERT INTO
    students (id, last_name, first_name)
VALUES
    (1, 'Crandell', 'Caroline'),
    (2, 'Obama', 'Michelle'),
    (3, 'Obama', 'Barack');

CREATE TABLE courses (
    id INTEGER NOT NULL PRIMARY KEY,
    course_name VARCHAR NOT NULL
);

INSERT INTO
    courses (id, course_name)
VALUES
    (3201, 'Excel'),
    (3202, 'Python'),
    (12101, 'SQL');

CREATE TABLE student_courses_junction (
    student_id INTEGER NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id),
    course_id INTEGER NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(id),
    course_term VARCHAR NOT NULL,
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO
    student_courses_junction (student_id, course_id, course_term)
VALUES
    (1, 12101, 'Spring'),
    (1, 3201, 'Fall'),
    (1, 3202, 'Fall'),
    (2, 12101, 'Fall'),
    (2, 3202, 'Spring'),
    (3, 3201, 'Spring'),
    (3, 3202, 'Fall');