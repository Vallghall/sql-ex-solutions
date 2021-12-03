SELECT i.point, i.date, SUM(i.inc), SUM(o.out)
    FROM Income_o i
    LEFT JOIN Outcome_o o
        ON i.point=o.point AND i.date=o.date
    GROUP BY i.point, i.date
UNION
SELECT o.point, o.date, SUM(i.inc), SUM(o.out)
    FROM Outcome_o o
    LEFT JOIN Income_o i
        ON i.point=o.point AND i.date=o.date
    GROUP BY o.point, o.date;