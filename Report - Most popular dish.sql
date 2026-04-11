SELECT *
FROM (
    SELECT m.ItemName,
           SUM(oi.Quantity) AS TotalSold
    FROM REST_ORDER_ITEMS oi
    JOIN REST_MENU_ITEMS m
        ON oi.ItemID = m.ItemID
    GROUP BY m.ItemName
    ORDER BY TotalSold DESC
)
WHERE ROWNUM <= 3;