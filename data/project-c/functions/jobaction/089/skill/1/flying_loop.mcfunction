particle minecraft:dust 1 0.25 1 1 ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:dust 1 0.25 1 1 ~ ~ ~ 0.05 0.05 0.05 1 2 normal @a
execute if score #089dummy counter matches 6 run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 2
scoreboard players remove #089dummy counter 1

tag @s add now
execute if entity @s[tag=089Red] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=Battle,team=!Red] run tag @s add hit
execute if entity @s[tag=089Blue] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=Battle,team=!Blue] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/089/skill/1/hit-entity-1
tag @s remove now

execute unless block ^ ^ ^0.3 #project-c:wancomatter/like_air run scoreboard players set #089dummy counter 0
tp @s ^ ^ ^0.3
execute if score #089dummy counter matches 1.. at @s run function project-c:jobaction/089/skill/1/flying_loop
