scoreboard players add @s counter 1

particle minecraft:flame ~ ~ ~ 0 0 0 0.1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 4 normal @a
execute if data entity @s {OnGround:1b} positioned ~ ~-0.5 ~ run function project-c:jobaction/104/skill/2/6



execute if score @s counter matches 140.. run kill @s