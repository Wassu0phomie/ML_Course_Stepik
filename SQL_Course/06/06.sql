SELECT year, COUNT(*) FROM album
WHERE band_id = (SELECT band_id FROM band
 WHERE name = 'Led Zeppelin')
GROUP BY year
ORDER BY year
;

SELECT year
FROM calendar_year
WHERE year BETWEEN 1969 AND 1982
ORDER BY year
;

SELECT * FROM calendar_year AS c
LEFT OUTER JOIN album AS a
 ON c.year = a.year
 AND a.band_id = 388
WHERE c.year BETWEEN 1969 AND 1982
ORDER BY c.year
;

SELECT c.year, COUNT(album_id) FROM calendar_year AS c
LEFT OUTER JOIN album AS a
 ON c.year = a.year
 AND a.band_id = 388
WHERE c.year BETWEEN 1969 AND 1982
GROUP BY c.year
ORDER BY c.year