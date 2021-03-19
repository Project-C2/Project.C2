particle minecraft:flame ~ ~1 ~ 0 0 0 0 1 force @a
particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 1 force @a
particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 4 normal @a
execute if score @s counter matches 1.. positioned ^ ^ ^-7.2 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0 1 force @a
execute if score @s counter matches 1.. positioned ^ ^ ^-7.2 run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 1 force @a
execute if score @s counter matches 1.. positioned ^ ^ ^-7.2 run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 4 normal @a

scoreboard players add @s counter_1 1
execute unless score @s counter_1 matches ..6 run tp @s ~ ~ ~
execute if score @s counter_1 matches ..6 positioned ^ ^ ^1.2 run function project-c:jobaction/089/skill/3/line