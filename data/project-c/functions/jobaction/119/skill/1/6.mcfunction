summon area_effect_cloud ~ ~ ~ {Tags:["097this"],Duration:1}
tag @s add 097
execute as @e[tag=097bluestar_hit] run function project-c:jobaction/097/skill/2/6-loop
tag @s remove 097
tag @e[tag=097this] remove 097this

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function project-c:jobaction/097/skill/2/6-hit




kill @s