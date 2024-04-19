SELECT level_details.LEVEL AS LEVEL, 
CASE level_details.Level 
WHEN 1 THEN player_details.L1_Code 
WHEN 2 THEN player_details.L2_Code
ELSE null 
END AS LEVEL_CODE,
sum(CAST(level_details.Lives_Earned AS decimal)) AS SUM_OF_LIVES_EARNED 
FROM anitdb1.level_details
JOIN player_details on level_details.P_ID = player_details.P_ID
where level_details.level > 0 -- exclude 0
group by level_details.level, case level_details.level
when 1 then player_details.L1_code
when 2 then player_details.L2_code
else null
end
order by level_details.level asc;