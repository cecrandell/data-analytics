CREATE TABLE Customers (
    CUST_ID SERIAL NOT NULL PRIMARY KEY,
    CUST_NAME VARCHAR(30) NOT NULL,
    CUST_CELLNO VARCHAR(30) NOT NULL,
    CUST_EMAIL VARCHAR(30) NOT NULL
);

INSERT INTO
    Customers (CUST_NAME, CUST_CELLNO, CUST_EMAIL)
VALUES
    (
        'Caroline Crandell',
        '6466620134',
        'c.crandell@imperial.ac.uk'
    ),
    (
        'Michelle Obama',
        '6466620135',
        'm.obama@gmail.com'
    ),
    (
        'Barack Obama',
        '6466620136',
        'b.obama@gmail.com'
    );

CREATE TABLE Sales (
    SALE_ID SERIAL NOT NULL PRIMARY KEY,
    S_CUSTID INT NOT NULL,
    S_COURSEID INT NOT NULL,
    S_QTY_ORDERED INT NOT NULL
);

INSERT INTO
    Sales (S_CUSTID, S_COURSEID, S_QTY_ORDERED)
VALUES
    (1, 1, 3),
    (1, 2, 2),
    (1, 1, 1),
    (1, 3, 1),
    (2, 1, 4);

CREATE TABLE Courses (
    COURSE_ID SERIAL NOT NULL PRIMARY KEY,
    COURSE_NAME VARCHAR(30) NOT NULL,
    COURSE_PRICE DECIMAL(10, 2) NOT NULL
);

INSERT INTO
    Courses (COURSE_NAME, COURSE_PRICE)
VALUES
    ('SQL', 49.99),
    ('Python', 29.99),
    ('Excel', 35.29);