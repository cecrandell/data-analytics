SELECT city, state
FROM public.cities
WHERE state = 'Arizona';

SELECT *
FROM public.cities
WHERE population < 100000;

SELECT *
FROM public.cities
WHERE population < 100000
AND state = 'California';
