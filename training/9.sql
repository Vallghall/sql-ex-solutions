SELECT DISTINCT maker
FROM Product p
RIGHT JOIN PC pc
ON p.model=pc.model
WHERE pc.speed >= 450;