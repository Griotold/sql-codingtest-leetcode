SELECT ROUND(COUNT(DISTINCT B.player_id)/ COUNT(DISTINCT A.player_id), 2) AS fraction
FROM (
         SELECT player_id, MIN(DATE_ADD(event_date, INTERVAL 1 DAY)) AS lag_event_date
         FROM Activity
         GROUP BY player_id
     ) A
         LEFT JOIN Activity B ON A.player_id = B.player_id AND A.lag_event_date = B.event_date;