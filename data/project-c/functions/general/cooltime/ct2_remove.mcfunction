scoreboard players set #CT counter_1 1219
scoreboard players operation #CT counter_1 -= @s CT2
scoreboard players operation #CT counter_1 /= #20 counter
execute store result score #CT counter_2 run data get entity @s Inventory[{tag:{CT:2}}].Count
scoreboard players operation #CT counter_2 -= #CT counter_1
execute if score #CT counter_2 matches 1 run clear @s minecraft:compass{CT:2} 1
execute if score #CT counter_2 matches 2 run clear @s minecraft:compass{CT:2} 2
execute if score #CT counter_2 matches 3 run clear @s minecraft:compass{CT:2} 3
execute if score #CT counter_2 matches 4 run clear @s minecraft:compass{CT:2} 4
execute if score #CT counter_2 matches 5 run clear @s minecraft:compass{CT:2} 5
execute if score #CT counter_2 matches 6 run clear @s minecraft:compass{CT:2} 6
execute if score #CT counter_2 matches 7 run clear @s minecraft:compass{CT:2} 7
execute if score #CT counter_2 matches 8 run clear @s minecraft:compass{CT:2} 8
execute if score #CT counter_2 matches 9 run clear @s minecraft:compass{CT:2} 9
execute if score #CT counter_2 matches 10 run clear @s minecraft:compass{CT:2} 10
scoreboard players reset #CT