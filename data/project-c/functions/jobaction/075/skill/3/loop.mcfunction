scoreboard players remove @s counter_2 1
particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 2 30 normal @a
particle flash ~ ~1 ~ 0 0 0 1 1 force @a
execute unless block ^ ^ ^0.4 #project-c:wancomatter/like_air run scoreboard players set @s counter_2 0
execute positioned ^ ^ ^1 if entity @s[team=Red] positioned ~-0.75 ~-0.75 ~-0.75 if entity @e[tag=Battle,dx=0.5,dy=0.5,dz=0.5,team=!Red] run scoreboard players set @s counter_2 0
execute positioned ^ ^ ^1 if entity @s[team=Blue] positioned ~-0.75 ~-0.75 ~-0.75 if entity @e[tag=Battle,dx=0.5,dy=0.5,dz=0.5,team=!Blue] run scoreboard players set @s counter_2 0
execute unless score @s counter_2 matches 1.. run function project-c:jobaction/075/skill/3/3
execute if score @s counter_2 matches 1.. positioned ^ ^ ^0.4 run function project-c:jobaction/075/skill/3/loop
