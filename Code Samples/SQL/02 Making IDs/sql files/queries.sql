SELECT
    *
FROM
    public.programming_languages
WHERE
    language = 'MySQL';

DELETE FROM
    public.programming_languages
WHERE
    id = 5;

INSERT INTO
    programming_languages (language, rating)
VALUES
    ('Python', 98),
    ('C++', 73),
    ('R', 95);

UPDATE
    programming_languages
SET
    language = 'JavaScript'
WHERE
    id = 2;

UPDATE
    programming_languages
SET
    rating = 90
WHERE
    id = 1;

ALTER TABLE
    programming_languages
ADD
    COLUMN mastered BOOLEAN default true;