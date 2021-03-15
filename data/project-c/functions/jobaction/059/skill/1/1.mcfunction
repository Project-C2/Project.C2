teleport @s[tag=059-1] ^ ^ ^1.5
scoreboard players add @s counter 1

execute if entity @s[tag=059-1] run particle flame ^ ^ ^ 0.5 0.5 0.5 0.1 10 force @a
execute if entity @s[tag=059-1] run particle flame ^ ^ ^ 0 0 0 0.01 10 force @a

execute if entity @s[tag=059-1] run particle minecraft:dust 1 0 0 2 ^ ^ ^1 0.3 0.3 0.3 0 2 force @a

execute if entity @s[tag=059-1] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a
execute if entity @s[tag=059-1] run execute as @s unless block ^ ^ ^ minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a

execute if entity @s[tag=059-1] run execute as @s unless block ^ ^ ^ minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute if entity @s[tag=059-1] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0

execute if entity @s[tag=059-1] run execute as @s unless block ^ ^ ^ minecraft:air at @s run kill @s
execute if entity @s[tag=059-1] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run kill @s

kill @s[scores={counter=8},tag=059-1]

execute if entity @s[tag=059-1R] run execute as @e[distance=..1.4,team=!Red] at @s run summon arrow ~ ~2.5 ~ {CustomName:'{"text":"炎の魔法","color":"red"}',Motion:[0.0,-2.0,0.0],life:1200,color:-1b}
execute if entity @s[tag=059-1R] run execute if entity @e[distance=..1.4,team=Blue] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a
execute if entity @s[tag=059-1R] run execute if entity @e[distance=..1.4,team=Blue] run tag @s add 059-1Hit

execute if entity @s[tag=059-1B] run execute as @e[distance=..1.4,team=!Blue] at @s run summon arrow ~ ~2.5 ~ {CustomName:'{"text":"炎の魔法","color":"red"}',Motion:[0.0,-2.0,0.0],life:1200,color:-1b}

execute if entity @s[tag=059-1B] run execute if entity @e[distance=..1.4,team=Red] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a

execute if entity @s[tag=059-1B] run execute if entity @e[distance=..1.4,team=Red] run tag @s add 059-1Hit

execute if entity @s[tag=059-1Hit] run execute as @a[scores={jobNumber=59,usedSkill=1}] at @s run function project-c:jobaction/059/skill/1/2

execute if entity @s[tag=059-1R] run execute if entity @e[distance=..1.4,team=Blue] run kill @s
execute if entity @s[tag=059-1B] run execute if entity @e[distance=..1.4,team=Red] run kill @s

execute as @e[tag=059-1] at @s run function project-c:jobaction/059/skill/1/1