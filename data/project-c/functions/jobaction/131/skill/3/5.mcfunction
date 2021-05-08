teleport @s ^ ^ ^1 ~ ~

particle minecraft:end_rod ^ ^ ^ 0.1 0.1 0.1 0 3 force @a
particle minecraft:end_rod ^ ^ ^0.2 0.1 0.1 0.1 0 3 force @a
particle minecraft:end_rod ^ ^ ^0.4 0.1 0.1 0.1 0 3 force @a
particle minecraft:end_rod ^ ^ ^0.6 0.1 0.1 0.1 0 3 force @a
particle minecraft:end_rod ^ ^ ^0.8 0.1 0.1 0.1 0 3 force @a

particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.2 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.4 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.6 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^0.8 0 0 0 0 1 force @a


scoreboard players add @s counter 1

execute as @s[tag=122-phycoballR] at @s if entity @e[distance=..2,team=Blue] run tag @s add 122-phycoballHit
execute as @s[tag=122-phycoballB] at @s if entity @e[distance=..2,team=Red] run tag @s add 122-phycoballHit
execute as @s unless block ^ ^ ^ #project-c:wancomatter/like_air run tag @s add 122-phycoballHit

execute as @s[tag=122-phycoballHit] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=122-phycoballHit] at @s run particle explosion ^ ^ ^ 0.1 0.1 0.1 0.5 2 force @a
execute as @s[tag=122-phycoballHit] at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 1 30 force @a

execute as @s[tag=122-phycoballHit,tag=122-phycoballR] at @s run effect give @e[team=Blue,distance=0..2.5] instant_damage 1 0
execute as @s[tag=122-phycoballHit,tag=122-phycoballB] at @s run effect give @e[team=Red,distance=0..2.5] instant_damage 1 0

execute as @s[tag=122-phycoballHit] at @s run kill @s

kill @s[scores={counter=14..}]

execute if entity @e[tag=131-GateLaser,limit=1] as @e[tag=131-GateLaser] at @s run function project-c:jobaction/131/skill/3/5