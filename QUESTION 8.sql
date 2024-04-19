SELECT Dev_ID, min(TimeStamp) AS FIRST_LOGIN_DATETIME FROM anitdb1.level_details
GROUP BY DEV_ID;