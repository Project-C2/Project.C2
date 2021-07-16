particle minecraft:dust 1 1 0 3 ^ ^ ^ 0 0 0 0 1 force @a
scoreboard players add @s counter 1
tp @s ^ ^ ^0.9 ~ ~5
particle minecraft:end_rod ^ ^ ^ 0 0 0 0.1 2 force @a
execute at @s unless block ^ ^ ^1 minecraft:air run function project-c:jobaction/049/skill/1/2

execute if entity @s[scores={counter=50..}] run kill @s
