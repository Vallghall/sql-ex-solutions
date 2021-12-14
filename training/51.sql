WITH ships_by_replacement AS (
SELECT c.displacement, MAX(c.numGuns) AS max_numGuns
FROM Classes c
JOIN Ships s
ON c.class=s.class
GROUP BY c.displacement
UNION
SELECT displacement, MAX(numGuns) AS max_numGuns
FROM Classes
JOIN Outcomes
ON class=ship
GROUP BY displacement
)
SELECT s.name
FROM ships_by_replacement sbp
JOIN Classes c
ON sbp.displacement=c.displacement
JOIN (
  SELECT class, name 
  FROM Ships
  UNION
  SELECT ship AS class, ship AS name
  FROM Outcomes) s
ON c.class=s.class
WHERE c.numGuns = sbp.max_numGuns
