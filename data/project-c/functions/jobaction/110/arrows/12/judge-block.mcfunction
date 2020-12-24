summon armor_stand 0.0 0.0 0.0 {Tags:["this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute store result entity @e[tag=this,limit=1] Pos[0] double 0.01 run scoreboard players get @s counter_1
execute store result entity @e[tag=this,limit=1] Pos[1] double 0.01 run scoreboard players get @s counter_2
execute store result entity @e[tag=this,limit=1] Pos[2] double 0.01 run scoreboard players get @s counter_3
execute positioned 0.0 0.0 0.0 facing entity @e[tag=this,limit=1,sort=nearest] feet positioned as @s run tp @s ~ ~ ~ ~ ~

scoreboard players operation @s counter_1 *= @s counter_1
scoreboard players operation @s counter_2 *= @s counter_2
scoreboard players operation @s counter_3 *= @s counter_3
scoreboard players operation @s counter_1 /= #100 counter
scoreboard players operation @s counter_2 /= #100 counter
scoreboard players operation @s counter_3 /= #100 counter
scoreboard players operation @s counter_1 += @s counter_2
scoreboard players operation @s counter_1 += @s counter_3
#ブロック端判定
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.2 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.1 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.05 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.025 if block ~ ~ ~ #project-c:wancomatter/like_air unless entity @e[distance=..0.6,tag=Battle] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,tag=Battle] run tp @s ~ ~1 ~
execute at @s positioned ~ ~-0.9 ~ if entity @e[distance=..0.8,tag=Battle] if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ~ ~-0.6 ~ if entity @e[distance=..0.8,tag=Battle] if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute at @s positioned ~ ~-0.3 ~ if entity @e[distance=..0.8,tag=Battle] if block ~ ~ ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~

kill @e[tag=this]