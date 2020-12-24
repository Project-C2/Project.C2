scoreboard players set #CT counter_1 1219
scoreboard players operation #CT counter_1 -= @s CT3
scoreboard players operation #CT counter_1 /= #20 counter
execute store result score #CT counter_2 run data get entity @s Inventory[{tag:{CT:3}}].Count
execute if score #CT counter_1 < #CT counter_2 run clear @s minecraft:compass{CT:3} 1
scoreboard players reset #CT