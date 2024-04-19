SELECT player_details.L1_Code, avg( level_details.kill_count) as avg_kill_count
 FROM anitdb1.`level_details`
 join player_details on level_details.P_ID = player_details.P_ID
 WHERE level_details.Lives_earned = 2
 group by player_details.L1_Code
 having count(distinct level_details.Stages_crossed) >= 3;