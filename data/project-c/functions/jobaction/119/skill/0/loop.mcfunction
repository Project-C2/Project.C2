scoreboard players add @s counter_1 1
execute if entity @e[tag=119flower,tag=!119on,distance=..2,limit=1] run tag @e[tag=119flower,distance=..2,tag=!119on] add 119on
#particle minecraft:dust 1.00 0.33 1.00 1 ~ ~-0.4 ~ 0 0 0 1 1 normal @a
execute unless score @s counter_1 matches 80.. positioned ^ ^ ^0.75 run function project-c:jobaction/119/skill/0/loop
