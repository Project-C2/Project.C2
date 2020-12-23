#スキル4

scoreboard players add @s counter_1 1
scoreboard players add @s counter_2 1

teleport @s ~ ~ ~ ~ ~




scoreboard players operation #team_number value = @s team_number

execute if entity @s[tag=106-SA-Red] run particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[tag=106-SA-Blue] run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:splash ~ ~ ~ 0 0 0 0 1 force

tag @s add sprink_arrow_anchor

execute if entity @s[tag=106-SA-Red] if entity @e[distance=..3,team=!Red,tag=Battle] run tag @s add 106_sprink_arrow_deploy
execute if entity @s[tag=106-SA-Blue] if entity @e[distance=..3,team=!Blue,tag=Battle] run tag @s add 106_sprink_arrow_deploy

execute if entity @e[tag=sprink_arrow_deploy,limit=1] run function project-c:jobaction/106/items/skill/04/deploy
tag @s remove sprink_arrow_anchor

execute at @s positioned ^ ^ ^0.1 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 106_deploy
execute at @s positioned ^0.05 ^ ^0.05 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 106_deploy
execute at @s positioned ^-0.05 ^ ^0.05 unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 106_deploy

execute unless entity @s[tag=kill] if entity @s[tag=106_deploy] at @s run function project-c:jobaction/106/items/skill/04/deploy

execute unless entity @s[tag=kill] if score @s counter_1 matches 800.. run function project-c:jobaction/106/items/skill/04/deploy

#execute if entity @s[tag=kill] run teleport @s ~ ~-512 ~
#execute if entity @s[tag=kill] run kill @s

execute unless entity @s[tag=kill] at @s if score @s counter_2 matches ..10 positioned ^ ^ ^0.1 run function project-c:jobaction/106/items/skill/04/shot
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..10 run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 1 2
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..10 run scoreboard players set @s counter_2 0