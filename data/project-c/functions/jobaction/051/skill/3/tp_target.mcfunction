scoreboard players add @s counter 1
execute if entity @s[team=Red] positioned ^ ^ ^0.0 positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,team=!Red,dx=0,dy=0,dz=0,limit=1] run tag @e[tag=Battle,team=!Red,dx=0,dy=0,dz=0] add hit
execute if entity @s[team=Blue] positioned ^ ^ ^0.0 positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,team=!Blue,dx=0,dy=0,dz=0,limit=1] run tag @e[tag=Battle,team=!Blue,dx=0,dy=0,dz=0] add hit
particle minecraft:dust 0.4 0.9 1 1 ~ ~-0.5 ~ 0.2 0.2 0.2 1 2 normal @a
particle minecraft:dust 0.4 0.9 1 1 ~ ~-0.5 ~ 0.2 0.2 0.2 1 1 force @a
execute unless entity @e[tag=hit,limit=1] unless score @s counter matches 50.. positioned ^ ^ ^0.2 if block ~ ~ ~ #project-c:wancomatter/like_air run function project-c:jobaction/051/skill/3/tp_target

