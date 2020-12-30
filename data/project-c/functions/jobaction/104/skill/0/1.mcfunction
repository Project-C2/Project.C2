particle minecraft:dust 1 0 0 0.7 ~ ~ ~ 0.1 0.1 0.1 0.01 2 force @a
particle minecraft:dust 1 0 0 0.7 ~ ~ ~ 0.1 0.1 0.1 0.01 8 normal @a
tp @s ^ ^ ^0.9 ~ ~5
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 4 normal @a
execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run function project-c:jobaction/104/skill/0/2

scoreboard players add @s counter 1
execute if entity @s[scores={counter=50..}] run kill @s

