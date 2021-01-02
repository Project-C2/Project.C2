#ブロック端判定
tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.125 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.0625 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.03125 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~

execute at @s run particle minecraft:item_snowball ~ ~0.2 ~ 2 0 2 1 88 normal @a
execute at @s run particle minecraft:item_snowball ~ ~0.2 ~ 2 0 2 1 22 force @a
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2


scoreboard players set @s counter_1 -2
execute at @s unless block ~ ~0.1 ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 2
execute at @s unless block ~0.1 ~ ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 1
execute at @s unless block ~-0.1 ~ ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 -1
execute at @s unless block ~ ~ ~0.1 #project-c:wancomatter/like_air run scoreboard players set @s counter_1 3
execute at @s unless block ~ ~ ~-0.1 #project-c:wancomatter/like_air run scoreboard players set @s counter_1 -3
execute at @s if entity @s[scores={counter_1=2}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","110blizzard","110blizzard+2","110blizzardY"],Duration:200}
execute at @s if entity @s[scores={counter_1=1}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","110blizzard","110blizzard+1","110blizzardXZ","110blizzardX"],Duration:200,Rotation:[0.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=3}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","110blizzard","110blizzard+3","110blizzardXZ","110blizzardZ"],Duration:200,Rotation:[90.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=-2}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","110blizzard","110blizzard-2","110blizzardY"],Duration:200}
execute at @s if entity @s[scores={counter_1=-1}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","110blizzard","110blizzard-1","110blizzardXZ","110blizzardX"],Duration:200,Rotation:[0.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=-3}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","110blizzard","110blizzard-3","110blizzardXZ","110blizzardZ"],Duration:200,Rotation:[90.0f,0.0f]}
scoreboard players operation @e[tag=this2,limit=1] counter_1 = @s counter_1
scoreboard players operation @e[tag=this2,limit=1] playerNumber = @s playerNumber
execute if entity @a[tag=user,limit=1,team=Red] run tag @e[tag=this2,limit=1] add 110blizzardR
execute if entity @a[tag=user,limit=1,team=Blue] run tag @e[tag=this2,limit=1] add 110blizzardB
execute if entity @a[tag=user,limit=1,scores={counter_9=3}] run tag @e[tag=this2] add 110geometric
tag @e[tag=this2] remove this2
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 200 normal @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 50 force @a


data merge block -52 79 -62 {auto:1b}
scoreboard players set #089dummy counter 150