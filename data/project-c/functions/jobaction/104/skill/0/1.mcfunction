particle minecraft:dust 1 0 0 0.7 ~ ~ ~ 0.1 0.1 0.1 0.01 2 force @a
particle minecraft:dust 1 0 0 0.7 ~ ~ ~ 0.1 0.1 0.1 0.01 8 normal @a
tp @s ^ ^ ^0.9 ~ ~5
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 4 normal @a
execute if entity @s[tag=104bombR] positioned ~ ~-0.9 ~ if entity @e[tag=Battle,team=!Red,distance=..1.2,limit=1] run scoreboard players set @s counter 201
execute if entity @s[tag=104bombB] positioned ~ ~-0.9 ~ if entity @e[tag=Battle,team=!Blue,distance=..1.2,limit=1] run scoreboard players set @s counter 201
execute if entity @s[tag=104bombR] if entity @e[tag=Battle,team=!Red,distance=..1.2,limit=1] run scoreboard players set @s counter 200
execute if entity @s[tag=104bombB] if entity @e[tag=Battle,team=!Blue,distance=..1.2,limit=1] run scoreboard players set @s counter 200
execute unless block ^ ^ ^0.9 #project-c:wancomatter/like_air run scoreboard players set @s counter 200

scoreboard players add @s counter 1
execute if entity @s[scores={counter=201..}] positioned ~ ~-0.7 ~ run function project-c:jobaction/104/skill/0/2
execute if entity @s[scores={counter=100..200}] run function project-c:jobaction/104/skill/0/2

