#counter -> 消滅処理用
execute as @e[tag=114-ToheiRailGun] at @s run function project-c:jobaction/114/skill/3/schedule_loop/1
execute as @e[tag=114-ToheiRailGunCore] at @s run function project-c:jobaction/114/skill/3/schedule_loop/2
execute as @e[tag=114-ToheiRailGunLight] run function project-c:jobaction/114/skill/3/schedule_loop/8
execute if entity @e[tag=114-ToheiRailGun,limit=1] run schedule function project-c:jobaction/114/skill/3/schedule_loop/0 1t replace