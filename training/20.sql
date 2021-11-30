SELECT maker, COUNT(model) AS models
FROM Product
WHERE type='PC'
GROUP BY maker
HAVING COUNT(model) >= 3;