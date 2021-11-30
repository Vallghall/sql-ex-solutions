WITH devices AS(
    SELECT model, price FROM PC
        WHERE price=(SELECT MAX(price) FROM PC)
    UNION ALL
    SELECT model, price FROM Laptop
        WHERE price=(SELECT MAX(price) FROM Laptop)
    UNION ALL
    SELECT model, price FROM Printer
        WHERE price=(SELECT MAX(price) FROM Printer)
)
SELECT DISTINCT model FROM devices
    WHERE price = (SELECT MAX(price) FROM devices);