scoreboard players add @s counter 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 10 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 2 force @a
particle minecraft:dust 0.65 0.95 1 1.5 ~ ~ ~ 0.03 0.03 0.03 0 2 force @a
tp @s ^ ^ ^0.6
execute unless score @s counter matches 10.. at @s run function project-c:jobaction/089/skill/2/elem_loop

