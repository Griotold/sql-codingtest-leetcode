# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1
         INNER JOIN
     (
         SELECT temperature, DATE_ADD(recordDate, INTERVAL 1 DAY) AS recordDate2
         FROM Weather
     ) w2
     ON w1.recordDate = w2.recordDate2
WHERE w1.temperature > w2.temperature;