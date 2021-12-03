SELECT point, date, SUM(out), SUM(inc)
FROM (SELECT i.point, i.date, o.out, i.inc
        FROM Income i
        LEFT JOIN Outcome o
            ON i.code=o.code AND i.date=o.date AND i.point=o.point
    UNION ALL
    SELECT o.point, o.date, o.out, i.inc
        FROM Income i
        RIGHT JOIN Outcome o
            ON i.code=o.code AND i.date=o.date AND i.point=o.point) t
    GROUP BY point, date;