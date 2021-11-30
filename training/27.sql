SELECT p.maker, AVG(pc.hd)
    FROM Product p
    JOIN PC pc
        ON p.model=pc.model
    GROUP BY p.maker
        HAVING p.maker IN 
            (SELECT maker FROM Product WHERE type='Printer');