scoreboard players add @s counter 1
execute if score @s counter matches 100.. run kill @s
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 8 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 2 force @a

execute if entity @s[tag=110spectralR] as @e[distance=..9.0,team=!Red,tag=Battle] run effect give @s minecraft:glowing 8 0
execute if entity @s[tag=110spectralB] as @e[distance=..9.0,team=!Blue,tag=Battle] run effect give @s minecraft:glowing 8 0

particle minecraft:firework ~ ~ ~ 1 1 1 1 8 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 1 2 force @a
