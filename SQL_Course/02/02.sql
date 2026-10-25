
SELECT * FROM album
WHERE album.band_id IN (
	SELECT band.band_id FROM band
	WHERE name = 'Led Zeppelin'
)
;