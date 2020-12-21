scoreboard players add @s counter 1
particle minecraft:falling_dust bamboo ~ ~ ~ 0.2 0.2 0.2 1 8 normal @a
particle minecraft:falling_dust bamboo ~ ~ ~ 0.2 0.2 0.2 1 2 force @a
execute if score @s counter matches 8.. run kill @s