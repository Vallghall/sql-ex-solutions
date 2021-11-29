SELECT c.class, s.name, c.country
FROM Classes c
JOIN Ships s
ON c.class=s.class
WHERE c.numGuns >= 10;