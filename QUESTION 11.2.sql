SELECT P_ID, TimeStamp, sum(Kill_Count) AS TOTAL_KILLS_SO_FAR
FROM anitdb1.level_details
GROUP BY level_details.P_ID, level_details.TimeStamp;