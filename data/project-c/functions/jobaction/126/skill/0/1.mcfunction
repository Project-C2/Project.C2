execute unless block ^ ^ ^ #project-c:wancomatter/like_air run tag @s add 128kill
execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run tag @s add 128kill
teleport @s ^ ^ ^1 ~ ~

scoreboard players add @s counter_1 1

particle end_rod ~ ~ ~ 0 0 0 0 1 force @a

execute if entity @e[tag=126-typhoon,distance=..3] run tag @s add 126-teleportS
execute if entity @s[tag=126-teleportS] at @s run function project-c:jobaction/126/skill/0/2

tag @s[scores={counter_1=30}] add 128kill
scoreboard players reset @s[tag=128kill]
kill @s[tag=128kill]
execute if entity @s[scores={counter_1=..30}] at @s run function project-c:jobaction/126/skill/0/1