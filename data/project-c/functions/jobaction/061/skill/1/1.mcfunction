teleport @s ^ ^ ^0.25 ~ ~

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1 force @a

particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.5 0.5 0.5 1 5 force @a
particle minecraft:dust 0 0 1 2 ~ ~ ~ 0.3 0.3 0.3 1 10 force @a

scoreboard players add @s counter 1
scoreboard players add @s counter_1 1


execute as @s[tag=061-nanoR,scores={counter_1=16}] at @s run execute as @e[distance=..6,team=Blue] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-1.5,0.0],life:1200,color:-1b}
execute as @s[tag=061-nanoB,scores={counter_1=16}] at @s run execute as @e[distance=..6,team=Red] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-1.5,0.0],life:1200,color:-1b}

execute as @s[tag=061-nanoR] at @s if entity @e[distance=..1.5,team=Blue] run tag @s add 061-nanoHit
execute as @s[tag=061-nanoB] at @s if entity @e[distance=..1.5,team=Red] run tag @s add 061-nanoHit
execute unless block ^ ^ ^0.25 air run tag @s add 061-nanoHit

execute as @s[tag=061-nanoHit] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=061-nanoHit] at @s run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a
execute as @s[tag=061-nanoHit] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~ 2 2 2 1 100 force @a
execute as @s[tag=061-nanoHit] at @s run particle minecraft:dust 0 0 1 2 ~ ~ ~ 1 1 1 1 20 force @a
execute as @s[tag=061-nanoHit] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 30 force @a

execute as @s[tag=061-nanoHit,tag=061-nanoR] at @s run effect give @e[team=Blue,distance=0..2] instant_damage 1 1
execute as @s[tag=061-nanoHit,tag=061-nanoB] at @s run effect give @e[team=Red,distance=0..2] instant_damage 1 1
execute as @s[tag=061-nanoHit,tag=061-nanoR] at @s run effect give @e[team=Blue,distance=2..5] instant_damage 1 0
execute as @s[tag=061-nanoHit,tag=061-nanoB] at @s run effect give @e[team=Red,distance=2..5] instant_damage 1 0

execute as @s[tag=061-nanoHit] at @s run kill @s

scoreboard players set @s[scores={counter_1=16}] counter_1 0
kill @s[scores={counter=400..}]