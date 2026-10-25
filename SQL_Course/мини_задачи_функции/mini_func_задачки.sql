-- Шаг 1
SELECT SUM(n_albums)
FROM band_extended;
-- 121918
SELECT COUNT(*)
FROM album;
-- 121918

-- Шаг 2
SELECT AVG(n_albums) AS avg_albums, COUNT(*) AS count_group
FROM band_extended
WHERE n_albums > 0

-- Шаг 3
SELECT AVG(n_albums) AS avg_albums, COUNT(*) AS count_group
FROM band_extended
