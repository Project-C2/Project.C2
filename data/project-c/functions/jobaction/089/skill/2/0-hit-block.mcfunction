#ブロック端判定
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.125 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.0625 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.03125 if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~

execute at @s run particle minecraft:item ice ~ ~0.2 ~ 2 0 2 1 88 normal @a
execute at @s run particle minecraft:item ice ~ ~0.2 ~ 2 0 2 1 22 force @a
execute at @s run playsound minecraft:item.trident.thunder neutral @a ~ ~ ~ 2 0.7


scoreboard players set @s counter_1 -2
execute at @s unless block ~ ~0.1 ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 2
execute at @s unless block ~0.1 ~ ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 1
execute at @s unless block ~-0.1 ~ ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_1 -1
execute at @s unless block ~ ~ ~0.1 #project-c:wancomatter/like_air run scoreboard players set @s counter_1 3
execute at @s unless block ~ ~ ~-0.1 #project-c:wancomatter/like_air run scoreboard players set @s counter_1 -3
execute at @s if entity @s[scores={counter_1=2}] run summon armor_stand ~ ~ ~ {Tags:["this2","089lightning","089lightning+2","089lightningY"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b}
execute at @s if entity @s[scores={counter_1=1}] run summon armor_stand ~ ~ ~ {Tags:["this2","089lightning","089lightning+1","089lightningXZ","089lightningX"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=3}] run summon armor_stand ~ ~ ~ {Tags:["this2","089lightning","089lightning+3","089lightningXZ","089lightningZ"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=-2}] run summon armor_stand ~ ~ ~ {Tags:["this2","089lightning","089lightning-2","089lightningY"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b}
execute at @s if entity @s[scores={counter_1=-1}] run summon armor_stand ~ ~ ~ {Tags:["this2","089lightning","089lightning-1","089lightningXZ","089lightningX"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f]}
execute at @s if entity @s[scores={counter_1=-3}] run summon armor_stand ~ ~ ~ {Tags:["this2","089lightning","089lightning-3","089lightningXZ","089lightningZ"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f]}
scoreboard players operation @e[tag=this2,limit=1] counter_1 = @s counter_1
scoreboard players operation @e[tag=this2,limit=1] playerNumber = @s playerNumber
tag @e[tag=this2] remove this2
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 200 normal @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 50 force @a


tag @s remove lightning-stop
scoreboard players set #089dummy counter 150