SELECT *
FROM music_instrument
WHERE id = 1
;

SELECT a.id, a.name, b.id child_id, b.name child_name
FROM music_instrument AS a
LEFT OUTER JOIN music_instrument AS b
 ON b.parent_id = a.id
LEFT OUTER JOIN music_instrument AS c
 ON c.parent_id = b.id
WHERE a.id = 1
;

SELECT a.id, a.name, b.id child_id, b.name child_name, 
c.id grandchild_id, c.name grandchild_name, 
d.id lvl4, d.name lvl4, 
lvl5.id lvl5, lvl5.name lvl5,
lvl6.id lvl6, lvl6.name lvl6,
lvl7.id lvl7, lvl7.name lvl7,
lvl8.id lvl8, lvl8.name lvl8,
lvl9.id lvl9, lvl9.name lvl9
FROM music_instrument AS a
LEFT OUTER JOIN music_instrument AS b
 ON b.parent_id = a.id
LEFT OUTER JOIN music_instrument AS c
 ON c.parent_id = b.id
LEFT OUTER JOIN music_instrument AS d
 ON d.parent_id = c.id
LEFT OUTER JOIN music_instrument AS lvl5
 ON lvl5.parent_id = d.id
LEFT OUTER JOIN music_instrument AS lvl6
 ON lvl6.parent_id = lvl5.id
LEFT OUTER JOIN music_instrument AS lvl7
 ON lvl7.parent_id = lvl6.id
LEFT OUTER JOIN music_instrument AS lvl8
 ON lvl8.parent_id = lvl7.id
LEFT OUTER JOIN music_instrument AS lvl9
 ON lvl9.parent_id = lvl8.id 
WHERE a.id = 1
ORDER BY name, child_name, grandchild_name
;
