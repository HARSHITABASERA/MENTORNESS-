SELECT P_ID, TimeStamp,
       sum(Kill_Count) OVER (partition by P_ID ORDER BY TimeStamp) AS TOTAL_KILLS_SO_FAR
  FROM anitdb1.level_details;