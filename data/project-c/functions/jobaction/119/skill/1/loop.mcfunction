scoreboard players add @s counter_1 1
execute if score @s counter_1 matches ..35 if entity @s[team=Red] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,team=!Red,dx=0,dy=0,dz=0,limit=1] run tag @e[tag=Battle,team=!Red,dx=0,dy=0,dz=0] add hit
execute if score @s counter_1 matches ..35 if entity @s[team=Blue] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,team=!Blue,dx=0,dy=0,dz=0,limit=1] run tag @e[tag=Battle,team=!Blue,dx=0,dy=0,dz=0] add hit
execute unless block ^ ^ ^0.5 #project-c:wancomatter/like_air run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/119/skill/1/summon
#particle minecraft:dust 1.00 0.33 1.00 1 ~ ~-0.4 ~ 0 0 0 1 1 normal @a
execute unless score @s counter_1 matches 200.. positioned ^ ^ ^0.2 run function project-c:jobaction/119/skill/1/loop
