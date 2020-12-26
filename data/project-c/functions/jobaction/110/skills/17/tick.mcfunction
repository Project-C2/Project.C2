particle minecraft:dust 1 1 0 1 ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.05 0.05 0.05 1 4 normal @a

scoreboard players add @s counter 1
execute if score @s counter_5 matches 100.. run scoreboard players add @s counter_5 1
execute if score @s counter_6 matches 100.. run scoreboard players add @s counter_6 1
execute if score @s counter_7 matches 100.. run scoreboard players add @s counter_7 1
execute if score @s counter matches ..6 run function project-c:jobaction/110/skills/17/flying


execute if score @s counter matches 80 run function project-c:jobaction/110/skills/17/disaddable
execute if score @s counter matches 80.. run kill @s