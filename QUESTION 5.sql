SELECT P_ID, Level, sum(Kill_Count) AS TOTAL_KILL_COUNTS FROM anitdb1.`level_details`
WHERE Difficulty = 'MEDIUM' AND Kill_Count > (
SELECT avg(Kill_Count) FROM anitdb1.`level_details`
WHERE Difficulty = 'MEDIUM')
GROUP BY P_ID, Level;