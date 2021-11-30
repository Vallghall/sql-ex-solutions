WITH avgs AS (
    SELECT pc.price
    FROM PC pc
    JOIN Product p
        ON pc.model=p.model
    WHERE p.maker='A'
        UNION ALL
    SELECT l.price
    FROM Laptop l
    JOIN Product p
        ON l.model=p.model
    WHERE p.maker='A'
) 
SELECT AVG(price) AS "AVG_price" FROM avgs;