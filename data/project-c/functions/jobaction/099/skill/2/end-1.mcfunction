
scoreboard players operation #099_pn_checker counter = @s playerNumber
execute if entity @e[tag=099-S2-area-ed,limit=1] as @e[tag=099-S2-area-ed] if score @s 099-S2-APN = #099_pn_checker counter run function project-c:jobaction/099/skill/2/end-0
execute if entity @e[type=area_effect_cloud,tag=099-S2-AEC,limit=1] as @e[type=area_effect_cloud,tag=099-S2-AEC] if score @s playerNumber = #099_pn_checker counter run function project-c:jobaction/099/skill/2/end
scoreboard players reset #099_pn_checker
