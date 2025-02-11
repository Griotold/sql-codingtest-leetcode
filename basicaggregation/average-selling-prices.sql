# Write your MySQL query statement below
SELECT p.product_id,
       CASE
           WHEN SUM(units) <> 0 THEN ROUND(SUM(p.price * us.units) / SUM(us.units), 2)
           ELSE 0
           END as average_price
FROM Prices p
         LEFT JOIN UnitsSold us
                   ON p.product_id = us.product_id
                       AND us.purchase_date >= p.start_date
                       AND us.purchase_date <= p.end_date
GROUP BY p.product_id;