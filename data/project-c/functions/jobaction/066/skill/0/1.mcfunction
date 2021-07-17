scoreboard players add @s counter 1

execute as @s[tag=066-daggerRed,tag=!066-daggerWorld,tag=!066-daggerW] at @s run execute as @e[distance=..1,team=Blue] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-2.0,0.0],life:1200,color:-1b}
execute as @s[tag=066-daggerBlue,tag=!066-daggerWorld,tag=!066-daggerW] at @s run execute as @e[distance=..1,team=Red] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-2.0,0.0],life:1200,color:-1b}

execute as @s[tag=066-daggerRed,tag=!066-daggerWorld,tag=066-daggerW] at @s run execute as @e[distance=..1,team=Blue] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-3.0,0.0],life:1200,color:-1b}
execute as @s[tag=066-daggerBlue,tag=!066-daggerWorld,tag=066-daggerW] at @s run execute as @e[distance=..1,team=Red] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-3.0,0.0],life:1200,color:-1b}

execute as @s[tag=066-daggerRed,tag=!066-daggerWorld] at @s if entity @e[distance=..1,team=Blue] run kill @s
execute as @s[tag=066-daggerBlue,tag=!066-daggerWorld] at @s if entity @e[distance=..1,team=Red] run kill @s

kill @s[scores={counter=100..}]