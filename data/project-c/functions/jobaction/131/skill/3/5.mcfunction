teleport @s ^ ^ ^1 ~ ~

#particle minecraft:end_rod ^ ^ ^ 0.1 0.1 0.1 0 3 force @a
#particle minecraft:end_rod ^ ^ ^0.2 0.1 0.1 0.1 0 3 force @a
#particle minecraft:end_rod ^ ^ ^0.4 0.1 0.1 0.1 0 3 force @a
#particle minecraft:end_rod ^ ^ ^0.6 0.1 0.1 0.1 0 3 force @a
#particle minecraft:end_rod ^ ^ ^0.8 0.1 0.1 0.1 0 3 force @a

particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.2 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.4 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.6 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.8 0 0 0 0 1 force @a


scoreboard players add @s counter 1

execute as @s[tag=131-GateLaserR] at @s if entity @e[distance=..1.5,team=Blue] run tag @s add 131-GateLaserHit
execute as @s[tag=131-GateLaserB] at @s if entity @e[distance=..1.5,team=Red] run tag @s add 131-GateLaserHit
execute as @s[scores={counter=3..}] unless block ^ ^ ^ #project-c:wancomatter/like_air run tag @s add 131-GateLaserHit

execute as @s[tag=131-GateLaserHit] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=131-GateLaserHit] at @s run particle explosion ^ ^ ^ 0.1 0.1 0.1 0.5 2 force @a
execute as @s[tag=131-GateLaserHit] at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 1 30 force @a

execute as @s[tag=131-GateLaserHit,tag=131-GateLaserR] at @s run effect give @e[team=Blue,distance=0..1.5] instant_damage 1 0
execute as @s[tag=131-GateLaserHit,tag=131-GateLaserB] at @s run effect give @e[team=Red,distance=0..1.5] instant_damage 1 0

execute as @s[tag=131-GateLaserHit] at @s run kill @s

kill @s[scores={counter=20..}]

execute if entity @e[tag=131-GateLaser,limit=1] as @e[tag=131-GateLaser] at @s run function project-c:jobaction/131/skill/3/5