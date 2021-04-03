#ブロック端判定
tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.125 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.0625 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.03125 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~

execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1.6


scoreboard players set @s counter_1 -2
execute at @s unless block ~ ~0.1 ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 2
execute at @s unless block ~0.1 ~ ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 1
execute at @s unless block ~-0.1 ~ ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 -1
execute at @s unless block ~ ~ ~0.1 #project-c:wancomatter/like_air run scoreboard players set @s counter_1 3
execute at @s unless block ~ ~ ~-0.1 #project-c:wancomatter/like_air run scoreboard players set @s counter_1 -3
execute at @s if entity @s[scores={counter_1=2}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","124windsong1","124windsong1+2","124windsong1Y"],Duration:200}
execute at @s if entity @s[scores={counter_1=1}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","124windsong1","124windsong1+1","124windsong1XZ","124windsong1X"],Duration:200,Rotation:[0.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=3}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","124windsong1","124windsong1+3","124windsong1XZ","124windsong1Z"],Duration:200,Rotation:[90.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=-2}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","124windsong1","124windsong1-2","124windsong1Y"],Duration:200}
execute at @s if entity @s[scores={counter_1=-1}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","124windsong1","124windsong1-1","124windsong1XZ","124windsong1X"],Duration:200,Rotation:[0.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=-3}] run summon area_effect_cloud ~ ~ ~ {Tags:["this2","124windsong1","124windsong1-3","124windsong1XZ","124windsong1Z"],Duration:200,Rotation:[90.0f,0.0f]}
data modify entity @e[tag=this2,limit=1] Owner set from entity @a[tag=user,limit=1] UUID
scoreboard players set @e[tag=this2,limit=1] counter 18
scoreboard players operation @e[tag=this2,limit=1] counter_1 = @s counter_1
scoreboard players operation @e[tag=this2,limit=1] playerNumber = @a[tag=user,limit=1] playerNumber
scoreboard players operation @e[tag=this2,limit=1] teamNumber = @a[tag=user,limit=1] teamNumber
tag @e[tag=this2] remove this2
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 25 force @a
playsound minecraft:block.note_block.harp master @a ~ ~ ~ 2 1.122462

data merge block 116 61 -62 {auto:1b}
scoreboard players set #124- counter 150