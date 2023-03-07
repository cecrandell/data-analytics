CREATE TABLE BICourses (
    COURSE_ID SERIAL NOT NULL PRIMARY KEY,
    COURSE_NAME VARCHAR(30) NOT NULL,
    COURSE_PRICE DECIMAL(10, 2) NOT NULL
);

INSERT INTO
    BICourses (COURSE_ID, COURSE_NAME, COURSE_PRICE)
VALUES
    (4, 'Tableau', 30.99),
    (6, 'PowerBI', 25.49),
    (7, 'Looker', 45.29);