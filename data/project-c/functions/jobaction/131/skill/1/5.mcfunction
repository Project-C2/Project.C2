teleport @s ^ ^ ^1 ~ ~

particle minecraft:end_rod ^ ^ ^ 0 0 0 0.3 5 force @a
particle minecraft:end_rod ^ ^ ^0.2 0 0 0 0.3 5 force @a
particle minecraft:end_rod ^ ^ ^0.4 0 0 0 0.3 5 force @a
particle minecraft:end_rod ^ ^ ^0.6 0 0 0 0.3 5 force @a
particle minecraft:end_rod ^ ^ ^0.8 0 0 0 0.3 5 force @a

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1

scoreboard players add @s counter 1

execute as @s[tag=131-GatePLaserR] at @s if entity @e[distance=..3,team=Blue] run tag @s add 131-GatePLaserHit
execute as @s[tag=131-GatePLaserB] at @s if entity @e[distance=..3,team=Red] run tag @s add 131-GatePLaserHit
execute as @s[scores={counter=3..}] unless block ^ ^ ^ #project-c:wancomatter/like_air run tag @s add 131-GatePLaserHit

execute as @s[tag=131-GatePLaserHit] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=131-GatePLaserHit] at @s run particle explosion ^ ^ ^ 0.1 0.1 0.1 0.5 2 force @a
execute as @s[tag=131-GatePLaserHit] at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 1 300 force @a

execute as @s[tag=131-GatePLaserHit,tag=131-GatePLaserR] at @s run effect give @e[team=Blue,distance=0..3] instant_damage 1 1
execute as @s[tag=131-GatePLaserHit,tag=131-GatePLaserB] at @s run effect give @e[team=Red,distance=0..3] instant_damage 1 1

execute as @s[tag=131-GatePLaserHit] at @s run kill @s

kill @s[scores={counter=80..}]
