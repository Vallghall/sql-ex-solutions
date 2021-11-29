SELECT AVG(speed) AS avg_speed
FROM PC pc
LEFT JOIN Product p
ON pc.model=p.model
WHERE p.maker='A';