particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players add @s counter 1
execute if entity @s[scores={counter=60..}] run kill @s