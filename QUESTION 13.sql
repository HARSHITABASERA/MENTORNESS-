SELECT P_ID, Dev_ID, TOTAL_SCORE, RANKING
 FROM (
     SELECT P_ID, Dev_ID, TOTAL_SCORE,
     row_number() over (partition by Dev_ID order by TOTAL_SCORE desc) as ranking
     from (
         select P_ID, Dev_ID, sum(Score) as total_score
         from anitdb1.level_details
         group by P_ID, Dev_ID) AS SCORES_BY_DEVICE) AS RANKED_SCORES
         WHERE RANKING <= 3;