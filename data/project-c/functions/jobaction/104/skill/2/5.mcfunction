scoreboard players add @s counter 1
tp @s ^ ^ ^0.4 ~ ~14.4

particle minecraft:flame ~ ~ ~ 0 0 0 0.1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 4 normal @a
execute positioned ~ ~-0.5 ~ unless block ^ ^ ^0.4 #project-c:wancomatter/like_air at @s run function project-c:jobaction/104/skill/2/6



execute if score @s counter matches 50.. run kill @s