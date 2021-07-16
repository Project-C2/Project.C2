#execute as @a[limit=1] unless entity @e[tag=049-Allay] run data merge block ~ ~ ~ {auto:0b}

particle minecraft:dust 1 2 0 2 ^ ^ ^ 0 0 0 0 1 force @a
scoreboard players add @s counter 1
tp @s ^ ^ ^0.3 ~ ~1
particle minecraft:end_rod ^ ^ ^ 0 0 0 0.05 1 force @a
execute as @s unless block ^ ^ ^1 minecraft:air at @s run function project-c:jobaction/049/skill/2/2

data merge storage random: {min:0,max:8}
execute store result score @s subcounter run function project-c:general/random

execute if score @s subcounter matches 1 run tp @s ^ ^ ^0.2 ~5 ~
execute if score @s subcounter matches 2 run tp @s ^ ^ ^0.2 ~-5 ~
execute if score @s subcounter matches 3 run tp @s ^ ^ ^0.2 ~ ~3
execute if score @s subcounter matches 4 run tp @s ^ ^ ^0.2 ~ ~-3

execute if entity @s[scores={counter=250..}] run kill @s
