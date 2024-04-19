DELIMITER //
CREATE procedure FIND_TOP_HEADSHOTS(IN n int)
begin
select Dev_ID, Difficulty, Headshots_Count, ranking
from (
     select Dev_ID, difficulty, Headshots_Count,
            row_number() over (partition by Dev_ID order by Headshots_Count asc) as ranking
	FROM anitdb1.`level details`
) as ranked_headshots
where ranking <= n;
end //
delimiter ;
