-- Шаг 1
SELECT COUNT(*) FROM band;

-- Шаг 2
SELECT year, COUNT(*)
FROM band
GROUP BY year;

-- Шаг 3
SELECT year, COUNT(*)
FROM band
WHERE year = 1900
GROUP BY year;

-- Шаг 4
SELECT *
FROM band
WHERE year = 1900;