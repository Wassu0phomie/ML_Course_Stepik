-- ШАГ 1-3
SELECT name, COUNT(*)
FROM band
GROUP BY name
HAVING COUNT(*) >= 2
ORDER BY COUNT(*) DESC
;

-- ШАГ 4
SELECT band_id, COUNT(*)
FROM album
GROUP BY band_id
ORDER BY 2 DESC
;

SELECT name
FROM band
WHERE band_id IN (
	SELECT band_id
	 FROM album
	 GROUP BY band_id
	 ORDER BY COUNT(*) DESC
	 LIMIT 1
 )
 ;