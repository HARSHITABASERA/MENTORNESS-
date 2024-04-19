SELECT Difficulty, ranking , Dev_ID, Score
FROM (
select difficulty, dev_ID, Score,
       rank() over (partition by difficulty order by score asc) as ranking
from anitdb1.level_details) as ranked_scores
where ranking <= 5;