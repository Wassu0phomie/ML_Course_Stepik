SELECT b.*, a.* FROM band AS b
INNER JOIN album AS a
 ON b.band_id = a.band_id
WHERE b.name = 'Led Zeppelin'