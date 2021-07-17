#スキル6


scoreboard players add @s counter_1 1
scoreboard players add @s counter_2 1

scoreboard players operation #106- teamNumber = @s teamNumber


particle minecraft:damage_indicator ~ ~ ~ 0.2 0.4 0.2 1 3 force
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 0.06 1.4

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=Battle,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] unless score @s teamNumber = #106- teamNumber run tag @s add hit
execute as @e[distance=..2,tag=Battle] unless score @s teamNumber = #106- teamNumber run tag @s add hit

scoreboard players reset #106-

execute if score @s counter_1 matches 14.. run tag @s add end--

execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit-block
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
execute if entity @s[tag=hit-block] run tag @s add end--

execute unless entity @s[tag=end--] positioned ^ ^ ^0.5 run function project-c:jobaction/106/items/skill/01/chase/deploy
