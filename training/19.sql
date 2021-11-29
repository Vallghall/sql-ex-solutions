SELECT p.maker, AVG(l.screen)
FROM Product p
RIGHT JOIN Laptop l
ON p.model=l.model
GROUP BY p.maker;