#スキル6


scoreboard players add @s counter 1

scoreboard players operation #106- teamNumber = @s teamNumber


execute as @a unless score @s teamNumber = #106- teamNumber run particle dust 1 0.5 0 2 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s
execute as @a if score @s teamNumber = #106- teamNumber run particle dust 0 1 1 2 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s

particle minecraft:sneeze ~ ~ ~ 0.2 0.2 0.2 0.1 5 force
#particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 1 force


scoreboard players reset #106-


execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
execute if entity @s[tag=hit-block] run scoreboard players set @s counter 100000
execute if entity @s[tag=hit-block] run tag @s remove hit-block


execute unless score @s counter matches 35.. positioned ^ ^ ^0.5 run function project-c:jobaction/106/items/skill/01/chase/notice
