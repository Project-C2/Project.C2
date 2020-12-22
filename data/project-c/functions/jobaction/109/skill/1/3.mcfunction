scoreboard players add @s counter 1
particle sweep_attack ~ ~ ~ 0 0 0 1 1 force @a
particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 1 2 normal @a
execute if score @s counter matches 4.. run kill @s