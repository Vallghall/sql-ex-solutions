SELECT maker
FROM Product p
RIGHT JOIN PC pc
    ON p.model=pc.model
WHERE pc.speed >= 750
INTERSECT
    SELECT maker
        FROM Product p
    RIGHT JOIN Laptop l
        ON p.model=l.model
    WHERE l.speed >= 750;