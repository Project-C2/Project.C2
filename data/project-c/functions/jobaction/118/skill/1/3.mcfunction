
execute store result score #118-- counter_1 run data get entity @s Health 100
execute as @a[tag=118-1--] store result score #118-- counter_2 run data get entity @s Health 100

scoreboard players operation #118-- counter_1 += #118-- counter_2
scoreboard players operation #118-- counter_1 /= #2 counter

scoreboard players operation @s ScoreToHealth = #118-- counter_1
execute as @a[tag=118-1--] run scoreboard players operation @s ScoreToHealth = #118-- counter_1

execute as @a[tag=118-1--] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a

scoreboard players reset #118--