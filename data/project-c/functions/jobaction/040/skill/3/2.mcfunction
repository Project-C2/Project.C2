scoreboard players add @s counter 1
teleport @s ^ ^ ^1 ~ ~
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["040-Enuma2","first"]}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
execute if entity @s[scores={counter=40..}] run kill @s
data merge block 111 2 -69 {auto:1b}
