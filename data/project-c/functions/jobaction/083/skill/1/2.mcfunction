teleport @s ^ ^ ^2 ~ ~

execute if entity @s run particle sweep_attack ^ ^ ^ 0 0 0 0 2 force @a
playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0
scoreboard players add @s counter 1



execute as @s[tag=083-slashRed] at @s run execute as @e[distance=..1.5,team=Blue] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-2.0,0.0],life:1200,color:-1b}
execute as @s[tag=083-slashBlue] at @s run execute as @e[distance=..1.5,team=Red] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-2.0,0.0],life:1200,color:-1b}

execute as @s[tag=083-slashRed] at @s if entity @e[distance=..1.5,team=Blue] run kill @s
execute as @s[tag=083-slashBlue] at @s if entity @e[distance=..1.5,team=Red] run kill @s

execute unless block ^ ^ ^1 air run particle end_rod ^ ^ ^ 0 0 0 0.5 10 force @a
execute unless block ^ ^ ^1 air run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
execute unless block ^ ^ ^1 air run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a
execute unless block ^ ^ ^1 air run kill @s

kill @s[scores={counter=18..}]