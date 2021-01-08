scoreboard players remove @s counter_1 1
execute if entity @e[tag=Battle,distance=..12,limit=1] run function project-c:jobaction/114/skill/3/schedule_loop/6
execute unless entity @e[tag=Battle,distance=..12,limit=1] run function project-c:jobaction/114/skill/3/schedule_loop/7
execute if score @s counter_1 matches 1.. positioned ^ ^ ^1 run function project-c:jobaction/114/skill/3/schedule_loop/5