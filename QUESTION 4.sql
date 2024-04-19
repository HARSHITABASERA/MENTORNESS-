SELECT P_ID, count(DISTINCT TimeStamp) FROM anitdb1.level_details
GROUP BY P_ID
having count(DISTINCT TimeStamp) > 1;