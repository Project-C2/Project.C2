scoreboard players add @s counter 1

execute if entity @s[tag=100-Level1] run teleport @s ^ ^ ^1
execute if entity @s[tag=100-Level2] run teleport @s ^ ^ ^1.5
execute if entity @s[tag=100-Level3] run teleport @s ^ ^ ^2
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 5 force @a
particle minecraft:dust 0 0.5 0 3 ~ ~ ~ 0 0 0 1 5 force @a

execute if entity @s[tag=100-bulletRed,tag=100-Level1] run effect give @e[team=Blue,distance=..2] instant_damage 1 0
execute if entity @s[tag=100-bulletBlue,tag=100-Level1] run effect give @e[team=Red,distance=..2] instant_damage 1 0

execute if entity @s[tag=100-bulletRed,tag=100-Level2] run effect give @e[team=Blue,distance=..2] instant_damage 1 0
execute if entity @s[tag=100-bulletBlue,tag=100-Level2] run effect give @e[team=Red,distance=..2] instant_damage 1 0

execute if entity @s[tag=100-bulletRed,tag=100-Level2] run effect clear @e[team=Blue,distance=..2] resistance
execute if entity @s[tag=100-bulletBlue,tag=100-Level2] run effect clear @e[team=Red,distance=..2] resistance

execute if entity @s[tag=100-bulletRed,tag=100-Level3] run effect give @e[team=Blue,distance=..2.5] instant_damage 1 0
execute if entity @s[tag=100-bulletBlue,tag=100-Level3] run effect give @e[team=Red,distance=..2.5] instant_damage 1 0


kill @s[scores={counter=9..}]