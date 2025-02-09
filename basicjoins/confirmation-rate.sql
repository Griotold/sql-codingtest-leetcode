# Write your MySQL query statement below
SELECT s.user_id
     , ROUND(SUM(IF(c.action='confirmed',1,0))/COUNT(*), 2) as 'confirmation_rate'
FROM signups s
         LEFT JOIN confirmations c
                   on s.user_id = c.user_id
GROUP BY s.user_id