## Gregarious Aggregates

In this activity, you will practice writing queries with aggregate functions, with grouping, and with using aliases.

### Instructions

Use aggregate functions as you run queries to answer the following questions. Try to use aliases for more informative column headings.

1. What is the average cost to rent a film in the stores?

```
SELECT
    AVG(rental_rate) AS "Average Rental Rate"
FROM
    film;
```

2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? What is the most expensive?

```
SELECT
    rating,
    AVG(rental_rate) AS "Average Rental Rate"
FROM
    film
GROUP BY
    rating;
```

3. How much would it cost to replace all films in the database?

```
SELECT
    SUM(replacement_cost) AS "Total Replacement Cost"
FROM
    film;
```

4. How much would it cost to replace all films in each ratings category?

```
SELECT
    rating,
    SUM(replacement_cost) AS "Replacement Cost"
FROM
    film
GROUP BY
    rating;
```

5. How long is the longest movie in the database? How long is the shortest movie?

```
SELECT
    MAX(length)
FROM
    film;
```
