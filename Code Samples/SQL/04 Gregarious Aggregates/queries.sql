SELECT
    AVG(rental_rate) AS "Average Rental Rate"
FROM
    film;

SELECT
    rating,
    AVG(rental_rate) AS "Average Rental Rate"
FROM
    film
GROUP BY
    rating;

SELECT
    SUM(replacement_cost) AS "Total Replacement Cost"
FROM
    film;

SELECT
    rating,
    SUM(replacement_cost) AS "Replacement Cost"
FROM
    film
GROUP BY
    rating;

SELECT
    MAX(length)
FROM
    film;