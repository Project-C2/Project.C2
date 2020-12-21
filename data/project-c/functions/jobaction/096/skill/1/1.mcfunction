particle minecraft:dust 0.2 1 1 1.5 ~ ~ ~ 0.1 0.1 0.1 1 2 normal @a
particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 0.01 4 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 force @a

execute unless score @s counter matches 80.. if entity @s[team=RedDummy] if entity @e[distance=..1.7,tag=Battle,team=!Red] run function project-c:jobaction/096/skill/1/hit
execute unless score @s counter matches 80.. if entity @s[team=BlueDummy] if entity @e[distance=..1.7,tag=Battle,team=!Blue] run function project-c:jobaction/096/skill/1/hit
execute unless score @s counter matches 80.. if entity @s[team=RedDummy] positioned ~ ~-0.7 ~ if entity @e[distance=..1.7,tag=Battle,team=!Red] positioned ~ ~0.7 ~ run function project-c:jobaction/096/skill/1/hit
execute unless score @s counter matches 80.. if entity @s[team=BlueDummy] positioned ~ ~-0.7 ~ if entity @e[distance=..1.7,tag=Battle,team=!Blue] positioned ~ ~0.7 ~ run function project-c:jobaction/096/skill/1/hit
execute unless score @s counter matches 80.. unless block ~ ~ ~ #project-c:wancomatter/like_air run function project-c:jobaction/096/skill/1/hit

scoreboard players add @s counter 1
tp @s ^ ^ ^1.5 ~ ~1.1
execute if score @s counter matches 80.. run kill @s