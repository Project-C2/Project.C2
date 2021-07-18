scoreboard players add @s counter 1
scoreboard players add @s subcounter 1
teleport @s ^ ^ ^0.7 ~ ~
particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 2 force @a
execute if entity @s[scores={counter=21..}] run kill @s
execute if entity @s[scores={subcounter=6..}] run function project-c:jobaction/040/skill/1/2
