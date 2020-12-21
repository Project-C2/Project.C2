particle minecraft:dust 1 1 0 1 ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.05 0.05 0.05 1 4 normal @a

scoreboard players add @s counter 1
execute if score @s counter matches ..8 run function project-c:jobaction/089/skill/1/flying


execute if score @s counter matches 100 run function project-c:jobaction/089/skill/1/disaddable
execute if score @s counter matches 100.. run kill @s