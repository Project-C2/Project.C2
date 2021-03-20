tp @s ^-10.0 ^ ^
execute if score @s counter_1 matches 64.. at @s run tp @s ^12.8 ^ ^
execute if score @s counter_1 matches 64.. run scoreboard players remove @s counter_1 64
execute if score @s counter_1 matches 32.. at @s run tp @s ^6.4 ^ ^
execute if score @s counter_1 matches 32.. run scoreboard players remove @s counter_1 32
execute if score @s counter_1 matches 16.. at @s run tp @s ^3.2 ^ ^
execute if score @s counter_1 matches 16.. run scoreboard players remove @s counter_1 16
execute if score @s counter_1 matches 08.. at @s run tp @s ^1.6 ^ ^
execute if score @s counter_1 matches 08.. run scoreboard players remove @s counter_1 08
execute if score @s counter_1 matches 04.. at @s run tp @s ^0.8 ^ ^
execute if score @s counter_1 matches 04.. run scoreboard players remove @s counter_1 04
execute if score @s counter_1 matches 02.. at @s run tp @s ^0.4 ^ ^
execute if score @s counter_1 matches 02.. run scoreboard players remove @s counter_1 02
execute if score @s counter_1 matches 01.. at @s run tp @s ^0.2 ^ ^

execute at @s run particle explosion ~ ~0.4 ~ 0 0 0 1 1 force @a
execute at @s run playsound minecraft:entity.sheep.death master @a ~ ~ ~ 4 1
execute at @s run playsound minecraft:entity.sheep.death master @a ~ ~ ~ 3 1
