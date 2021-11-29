SELECT DISTINCT 'Laptop', model, speed
FROM Laptop
WHERE speed < ANY(SELECT MIN(pc.speed) FROM PC pc);