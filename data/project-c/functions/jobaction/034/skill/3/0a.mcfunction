scoreboard players add @s counter 1
execute at @s unless block ^ ^ ^1 air positioned ~ ~-1 ~ run function project-c:jobaction/034/skill/3/0b
execute if entity @s[team=RedDummy,tag=034-houndF] at @s positioned ~ ~-1 ~ if entity @e[team=!Red,tag=Battle,distance=..2.8] run function project-c:jobaction/034/skill/3/0b
execute if entity @s[team=BlueDummy,tag=034-houndF] at @s positioned ~ ~-1 ~ if entity @e[team=!Blue,tag=Battle,distance=..2.8] run function project-c:jobaction/034/skill/3/0b
execute at @s run tp @s ^ ^ ^1
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 8 normal @a
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 2 force @a
execute if entity @s[scores={counter=..100}] run function project-c:jobaction/034/skill/3/0a