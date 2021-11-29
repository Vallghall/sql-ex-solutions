SELECT DISTINCT p.maker, pr.price
FROM Product p
JOIN Printer pr
ON p.model = pr.model
WHERE pr.color='y' 
  AND pr.price<=(SELECT MIN(price) FROM Printer WHERE color='y');