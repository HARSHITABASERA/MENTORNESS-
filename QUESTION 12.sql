SELECT P_ID, TimeStamp, Stages_crossed FROM
( SELECT P_ID, TIMESTAMP, STAGES_CROSSED,
         sum(Stages_crossed) OVER (PARTITION BY P_ID ORDER BY TIMESTAMP) - Stages_crossed,
         row_number() over (partition by p_id order by timestamp desc) as row_num
from anitdb1.level_details) as subquery
where row_num > 1;
