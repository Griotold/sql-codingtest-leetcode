# Write your MySQL query statement below

SELECT e.name
FROM Employee e
         INNER JOIN (
    SELECT managerId
    FROM Employee e
    WHERE e.managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(*) >= 5
) m
                    ON e.id = m.managerId;
