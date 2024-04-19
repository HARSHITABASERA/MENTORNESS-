SELECT sum(cast(Stages_crossed as decimal)) as total_stages, Dev_ID, Difficulty  FROM anitdb1.player_details
join level_details on player_details.P_ID = level_details.P_ID
where Dev_ID like 'zm%' and level = 2
group by Difficulty, Dev_ID
order by total_stages desc;