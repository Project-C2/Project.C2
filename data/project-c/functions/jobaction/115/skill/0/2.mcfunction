summon area_effect_cloud ~ ~ ~ {Tags:["115this"],Duration:1}
tag @s add 115
execute as @e[tag=115double_melee_hit] run function project-c:jobaction/115/skill/0/2-loop
tag @s remove 115
tag @e[tag=115this] remove 115this

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function project-c:jobaction/115/skill/0/2-hit




kill @s