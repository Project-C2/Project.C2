summon area_effect_cloud ~ ~ ~ {Tags:["119this"],Duration:1}
tag @s add 119
execute as @e[distance=..3,tag=Battle] run function project-c:jobaction/119/skill/1/2-loop
tag @e[tag=119this] remove 119this
execute if entity @e[tag=hit,limit=1] run data merge entity @s {Fire:-20s}
execute if entity @e[tag=hit,limit=1] as @e[tag=hit,limit=1,sort=nearest] at @s rotated ~ 0 positioned ^0.5 ^0.7 ^0.3 run tp @e[tag=119,limit=1,sort=nearest] ~ ~ ~
tag @s remove 119
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit
