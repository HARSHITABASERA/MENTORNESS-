SELECT P_ID, Dev_ID, min(TimeStamp) AS FIRST_LOGIN FROM anitdb1.level_details
GROUP BY P_ID, Dev_ID;