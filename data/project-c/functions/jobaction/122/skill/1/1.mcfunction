teleport @s ^ ^ ^0.2 ~ ~

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1 force @a

particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 1 5 force @a
particle minecraft:dust 1 0 1 2 ~ ~ ~ 0.3 0.3 0.3 1 5 force @a

scoreboard players add @s counter 1

execute as @s[tag=122-phycoballR] at @s if entity @e[distance=..2,team=Blue] run tag @s add 122-phycoballHit
execute as @s[tag=122-phycoballB] at @s if entity @e[distance=..2,team=Red] run tag @s add 122-phycoballHit
execute as @s unless block ^ ^ ^0.25 #project-c:wancomatter/like_air run tag @s add 122-phycoballHit

execute as @s[tag=122-phycoballHit] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=122-phycoballHit] at @s run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a
execute as @s[tag=122-phycoballHit] at @s run particle minecraft:dust 1 0 1 1 ~ ~ ~ 2 2 2 1 100 force @a
execute as @s[tag=122-phycoballHit] at @s run particle minecraft:dust 1 0 1 2 ~ ~ ~ 1 1 1 1 20 force @a
execute as @s[tag=122-phycoballHit] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 30 force @a

execute as @s[tag=122-phycoballHit,tag=122-phycoballR] at @s run effect give @e[team=Blue,distance=0..2.5] instant_damage 1 0
execute as @s[tag=122-phycoballHit,tag=122-phycoballB] at @s run effect give @e[team=Red,distance=0..2.5] instant_damage 1 0

execute as @s[tag=122-phycoballHit] at @s run kill @s

kill @s[scores={counter=400..}]