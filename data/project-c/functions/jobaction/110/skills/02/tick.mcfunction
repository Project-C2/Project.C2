scoreboard players add @s counter 1
particle minecraft:poof ~ ~ ~ 0 0 0 0.1 1 normal @a
execute if score @s counter matches 60.. run kill @s