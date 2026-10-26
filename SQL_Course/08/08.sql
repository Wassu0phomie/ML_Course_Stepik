SELECT band_id
FROM album
WHERE name = 'Now'

SELECT band_id
FROM album
WHERE name = 'The Collection'

SELECT * FROM band
WHERE band_id IN (SELECT band_id
FROM album
WHERE name = 'Now'
INTERSECT
SELECT band_id
FROM album
WHERE name = 'The Collection')


