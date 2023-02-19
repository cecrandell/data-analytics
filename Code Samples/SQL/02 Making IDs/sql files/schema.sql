CREATE TABLE programming_languages (
    id SERIAL PRIMARY KEY,
    language VARCHAR(20),
    rating INT
);

INSERT INTO
    programming_languages (language, rating)
VALUES
    ('HTML', 95),
    ('JS', 99),
    ('JQuery', 98),
    ('MySQL', 70),
    ('MySQL', 70);