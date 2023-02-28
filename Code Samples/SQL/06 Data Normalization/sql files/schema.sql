CREATE TABLE owners (
    id INT PRIMARY KEY NOT NULL,
    owner_name VARCHAR(255)
);

INSERT INTO
    owners (ID, owner_name)
VALUES
    (1, 'Sally'),
    (2, 'Charles'),
    (3, 'Angela'),
    (4, 'Kelly'),
    (5, 'Sam'),
    (6, 'Cassie');

CREATE TABLE pet_names (
    id INT NOT NULL PRIMARY KEY,
    owner_id INT NOT NULL,
    pet_name VARCHAR(255),
    type VARCHAR (255)
);

INSERT INTO
    pet_names (id, owner_id, pet_name, type)
VALUES
    (10, 1, 'Zeus', 'Dog'),
    (11, 1, 'Fido', 'Dog'),
    (12, 2, 'Kevin', 'Dog'),
    (13, 3, 'Sprinkles', 'Cat'),
    (14, 4, 'Jumper', 'Cat'),
    (15, 5, 'Hoppy', 'Rabbit'),
    (16, 6, 'Rex', 'Dog'),
    (17, 6, 'Carrot', 'Rabbit');

CREATE TABLE service (
    id INT NOT NULL PRIMARY KEY,
    service_type VARCHAR(255)
);

INSERT INTO
    service (id, service_type)
VALUES
    (22, 'Walk'),
    (33, 'Feed'),
    (44, 'Hop');

CREATE TABLE pet_names_new (
    id INT NOT NULL PRIMARY KEY,
    owner_id INT NOT NULL,
    service_id INT NOT NULL,
    pet_name VARCHAR(255),
    type VARCHAR (255)
);

INSERT INTO
    pet_names_new (ID, owner_id, service_id, pet_name, type)
VALUES
    (10, 1, 22, 'Zeus', 'Dog'),
    (11, 1, 22, 'Fido', 'Dog'),
    (12, 2, 22, 'Kevin', 'Dog'),
    (13, 3, 33, 'Sprinkles', 'Cat'),
    (14, 4, 33, 'Jumper', 'Cat'),
    (15, 5, 44, 'Hoppy', 'Rabbit'),
    (16, 6, 22, 'Rex', 'Dog'),
    (17, 6, 44, 'Carrot', 'Rabbit');