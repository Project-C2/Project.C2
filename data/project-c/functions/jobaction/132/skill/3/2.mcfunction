particle minecraft:spit ~ ~ ~ 0 0 0 1 100
particle minecraft:explosion ~ ~ ~ 0 0 0 1 2
scoreboard players add @s counter 1
execute if entity @s[scores={counter=4..}] run kill @s
