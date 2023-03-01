CREATE TABLE customer (
    id SERIAL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO
    customer (first_name, last_name)
VALUES
    ('Caroline', 'Crandell'),
    ('Taylor', 'Swift'),
    ('Michelle', 'Obama'),
    ('Barack', 'Obama');

CREATE TABLE customer_email (
    id SERIAL,
    email VARCHAR(30) NOT NULL,
    customer_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO
    customer_email (customer_id, email)
VALUES
    (1, 'c.crandell@gmail.com'),
    (2, 't.swift@gmail.com'),
    (3, 'm.obama@gmail.com'),
    (4, 'b.obama@gmail.com');

CREATE TABLE customer_phone (
    id SERIAL,
    phone VARCHAR(30) NOT NULL,
    customer_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO
    customer_phone (customer_id, phone)
VALUES
    (1, '646-344-2245'),
    (2, '646-776-4678'),
    (3, '646-634-7753'),
    (4, '646-663-5799');