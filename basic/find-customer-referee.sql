SELECT name
FROM Customer
-- WHERE referee_id <> 2
WHERE referee_id != 2
OR referee_id IS NULL;

-- COALESCE 사용해서 푸는 풀이 -> null 인 경우 0으로 대체해줘
SELECT name
FROM Customer
WHERE COALESCE(referee_id, 0) != 2;