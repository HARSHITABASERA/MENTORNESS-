SELECT P_ID
 FROM (
	SELECT P_ID, sum(SCORE) AS TOTAL_SCORE
	FROM anitdb1.`level_details`
    GROUP BY P_ID) AS PLAYER_SCORES
    WHERE TOTAL_SCORE > (
    SELECT 0.5 * avg (TOTAL_SCORE)
    FROM (
    select sum(Score) AS TOTAL_SCORE
    FROM anitdb1.`level_details`
    GROUP BY P_ID) AS AVG_SCORES );