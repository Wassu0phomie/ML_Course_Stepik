--ШАГ 1
SELECT * FROM band
WHERE name LIKE '%magic%'
ORDER BY name
;

--ШАГ 2
SELECT * FROM band
WHERE LOWER(name) LIKE '%magic%'
ORDER BY name
;

--ШАГ 3
SELECT COUNT(*) FROM person
WHERE ASCII(SUBSTRING(name, 1, 1)) BETWEEN ASCII('A') AND ASCII('Z')
;
-- 155811
SELECT COUNT(*) FROM person
;
-- 169467

--ШАГ 4
SELECT SUBSTRING(name, 1, 1), COUNT(*) AS c
FROM person
WHERE ASCII(SUBSTRING(name, 1, 1)) BETWEEN ASCII('A') AND ASCII('Z')
GROUP BY SUBSTRING(name, 1, 1)
ORDER BY c DESC
;

--ШАГ 5
SELECT SUBSTRING(name, 1, POSITION(' ' IN name) - 1) as substring, COUNT(*) as count
FROM person
WHERE ASCII(SUBSTRING(name, 1, 1)) BETWEEN ASCII('A') AND ASCII('Z') 
	AND position(' ' in name) > 0
GROUP BY substring
ORDER BY count DESC
;