teleport @s ^ ^ ^1 ~ ~

particle flame ^ ^ ^ 0 0 0 0.1 3 force @a
particle flame ^ ^ ^ 0.1 0.1 0.1 0 7 force @a

scoreboard players add @s counter 1



execute as @s[tag=061-fireR] at @s run execute as @e[distance=..1.5,team=Blue] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-1.5,0.0],life:1200,color:-1b,Fire:40s}
execute as @s[tag=061-fireB] at @s run execute as @e[distance=..1.5,team=Red] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-1.5,0.0],life:1200,color:-1b,Fire:40s}

execute as @s[tag=061-fireR] at @s if entity @e[distance=..1.5,team=Blue] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=061-fireB] at @s if entity @e[distance=..1.5,team=Red] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=061-fireR] at @s if entity @e[distance=..1.5,team=Blue] run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a
execute as @s[tag=061-fireB] at @s if entity @e[distance=..1.5,team=Red] run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a

execute as @s[tag=061-fireR] at @s if entity @e[distance=..1.5,team=Blue] run kill @s
execute as @s[tag=061-fireB] at @s if entity @e[distance=..1.5,team=Red] run kill @s

execute unless block ^ ^ ^1 air run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute unless block ^ ^ ^1 air run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a
execute unless block ^ ^ ^1 air run kill @s

kill @s[scores={counter=140..}]