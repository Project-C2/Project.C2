teleport @s[tag=059-2] ^ ^ ^1.5
scoreboard players add @s counter 1

execute if entity @s[tag=059-2] run particle cloud ^ ^ ^ 0.5 0.5 0.5 0.1 3 force @a

execute if entity @s[tag=059-2] run particle minecraft:dust 0 1 0 2 ^ ^ ^1 0.3 0.3 0.3 0 2 force @a

execute if entity @s[tag=059-2] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a
execute if entity @s[tag=059-2] run execute as @s unless block ^ ^ ^ minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a

execute if entity @s[tag=059-2] run execute as @s unless block ^ ^ ^ minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute if entity @s[tag=059-2] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0

execute if entity @s[tag=059-2] run execute as @s unless block ^ ^ ^ minecraft:air at @s run kill @s
execute if entity @s[tag=059-2] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run kill @s

kill @s[scores={counter=8},tag=059-2]

execute if entity @s[tag=059-2R] run execute as @e[distance=..1.4,team=!Red] at @s run summon arrow ~ ~2.5 ~ {CustomName:"{\"text\":\"風の魔法\",\"color\":\"green\"}",Motion:[0.0,-2.0,0.0],life:1200,color:-2b}
execute if entity @s[tag=059-2R] run execute if entity @e[distance=..1.4,team=Blue] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a
execute if entity @s[tag=059-2R] run execute if entity @e[distance=..1.4,team=Blue] run tag @s add 059-2Hit

execute if entity @s[tag=059-2B] run execute as @e[distance=..1.4,team=!Blue] at @s run summon arrow ~ ~2.5 ~ {CustomName:"{\"text\":\"風の魔法\",\"color\":\"green\"}",Motion:[0.0,-2.0,0.0],life:1200,color:-2b}

execute if entity @s[tag=059-2B] run execute if entity @e[distance=..1.4,team=Red] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a

execute if entity @s[tag=059-2B] run execute if entity @e[distance=..1.4,team=Red] run tag @s add 059-2Hit

execute if entity @s[tag=059-2Hit] run execute as @a[scores={jobNumber=59,usedSkill=2}] at @s run function project-c:jobaction/059/skill/2/2

execute if entity @s[tag=059-2R] run execute if entity @e[distance=..1.4,team=Blue] run kill @s
execute if entity @s[tag=059-2B] run execute if entity @e[distance=..1.4,team=Red] run kill @s

execute as @e[tag=059-2] at @s run function project-c:jobaction/059/skill/2/1