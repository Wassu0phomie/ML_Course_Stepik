SELECT * FROM band
WHERE name = 'Led Zeppelin'
;

SELECT * FROM album
WHERE album.band_id = (
	SELECT band.band_id FROM band
	WHERE name = 'Led Zeppelin'
)
