#スキル4

scoreboard players add @s counter_1 1
scoreboard players add @s counter_2 1

teleport @s ~ ~ ~ ~ ~

scoreboard players operation #106- teamNumber = @s teamNumber

execute if score @s teamNumber matches 1 run particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 2 force @a
execute if score @s teamNumber matches 2 run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 2 force @a
particle minecraft:splash ~ ~ ~ 0 0 0 0 5 force

#tag @s add sprink_arrow_anchor

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=Battle,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] unless score @s teamNumber = #106- teamNumber run tag @s add 106_sprink_arrow_deploy

execute if entity @e[tag=106_sprink_arrow_deploy,limit=1] run function project-c:jobaction/106/items/skill/04/deploy
#tag @s remove sprink_arrow_anchor


execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 106_deploy
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 106_deploy
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 106_deploy
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 106_deploy
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add 106_deploy

execute unless entity @s[tag=kill] if entity @s[tag=106_deploy] at @s run function project-c:jobaction/106/items/skill/04/deploy

execute unless entity @s[tag=kill] if score @s counter_1 matches 160.. run function project-c:jobaction/106/items/skill/04/deploy

#execute if entity @s[tag=kill] run teleport @s ~ ~-512 ~
#execute if entity @s[tag=kill] run kill @s

execute unless entity @s[tag=kill] at @s if score @s counter_2 matches ..2 positioned ^ ^ ^0.5 run function project-c:jobaction/106/items/skill/04/shot
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..2 run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 1 2
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..2 run scoreboard players set @s counter_2 0


scoreboard players reset #106-