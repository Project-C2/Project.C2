execute if score @s subcounter matches 1 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 2 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 5 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 6 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 3 store result score @s counter_2 run data get entity @s Rotation[1] 100
execute if score @s subcounter matches 4 store result score @s counter_2 run data get entity @s Rotation[1] 100

execute if score @s counter_1 matches 18000.. run scoreboard players remove @s counter_1 36000
execute if score @s counter_1 matches ..-18000 run scoreboard players add @s counter_1 36000

execute if score @s subcounter matches 1..4 run scoreboard players set @s counter_4 -1
execute if score @s subcounter matches 5..6 run scoreboard players set @s counter_4 18000

execute if score @s subcounter matches 1..2 store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s counter_1 *= @s counter_4
execute if score @s subcounter matches 5..6 store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s counter_4 -= @s counter_1
execute if score @s subcounter matches 3..4 store result entity @s Rotation[1] float 0.01 run scoreboard players operation @s counter_2 *= @s counter_4
tp @s @s

execute if score @s subcounter matches 1.. run scoreboard players remove @s counter_5 2
execute if score @s subcounter matches 1.. run scoreboard players operation @s counter_3 += @s counter_5
execute if score @s subcounter matches 1.. run scoreboard players reset @s counter_4
execute if score @s subcounter matches 3..4 run scoreboard players reset @s counter_2
execute if score @s subcounter matches 1.. run scoreboard players reset @s counter_1
execute if score @s subcounter matches 1.. run scoreboard players reset @s subcounter
