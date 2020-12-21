scoreboard players add @s counter 1
execute unless block ~ ~ ~ air run tag @s add 035-1hit
execute if entity @s[tag=035-1ShotR] if entity @e[team=!Red,team=!,distance=..1.1] run tag @e[team=!Red,team=!,distance=..1.1] add 035-1hit
execute if entity @s[tag=035-1ShotB] if entity @e[team=!Blue,team=!,distance=..1.1] run tag @e[team=!Blue,team=!,distance=..1.1] add 035-1hit
execute unless entity @e[tag=035-1hit] if entity @s[tag=035-1ShotR] positioned ~ ~-0.8 ~ if entity @e[team=!Red,team=!,distance=..1.1] run tag @e[team=!Red,team=!,distance=..1.1] add 035-1hit
execute unless entity @e[tag=035-1hit] if entity @s[tag=035-1ShotB] positioned ~ ~-0.8 ~ if entity @e[team=!Blue,team=!,distance=..1.1] run tag @e[team=!Blue,team=!,distance=..1.1] add 035-1hit
particle minecraft:instant_effect ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:instant_effect ^ ^ ^-0.2 0 0 0 0 1 normal @a
execute if entity @s[scores={counter=200..}] run tag @s add 035-1hit
execute if entity @e[tag=035-1hit] run function project-c:jobaction/035/skill/bow/1-hit

execute unless entity @s[scores={counter=200..}] positioned ^ ^ ^0.4 run function project-c:jobaction/035/skill/bow/1-