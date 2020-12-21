particle cloud ~ ~1 ~ 2 1 2 0.4 3
execute as @e[tag=071Air2] at @s run particle cloud ~ ~1 ~ 2 1 2 0.2 7

execute as @e[tag=071Air3] at @s run particle end_rod ~ ~1 ~ 2 1 2 0.2 2 normal @a
execute as @e[tag=071Air3] at @s run particle cloud ~ ~1 ~ 2 1 2 0.2 10

execute as @e[tag=071Air4] at @s run particle sweep_attack ~ ~1 ~ 2.5 0.5 2.5 0.2 4
execute as @e[tag=071Air4] at @s run particle cloud ~ ~1 ~ 2 0.5 2 0.2 10

execute as @e[tag=071AirRed1] at @s run effect give @a[distance=..7,team=Red] minecraft:speed 10 0 true
execute as @e[tag=071AirBlue1] at @s run effect give @a[distance=..7,team=Blue] minecraft:speed 10 0 true

execute as @e[tag=071AirRed2] at @s run effect give @a[distance=..7,team=Red] minecraft:speed 10 1 true

execute as @e[tag=071AirRed2] at @s run effect give @a[distance=..7,team=Red] minecraft:jump_boost 10 1 true

execute as @e[tag=071AirBlue2] at @s run effect give @a[distance=..7,team=Blue] minecraft:speed 10 1 true

execute as @e[tag=071AirBlue2] at @s run effect give @a[distance=..7,team=Blue] minecraft:jump_boost 10 1 true

execute as @e[tag=071AirRed3] at @s run effect give @a[distance=..7,team=Red] minecraft:speed 30 0 true
execute as @e[tag=071AirRed3] at @s run effect give @a[distance=..7,team=Red] minecraft:jump_boost 30 1 true
execute as @e[tag=071AirRed3] at @s run effect give @a[distance=..7,team=Red] minecraft:resistance 1 1 true

execute as @e[tag=071AirBlue3] at @s run effect give @a[distance=..7,team=Blue] minecraft:speed 30 0 true
execute as @e[tag=071AirBlue3] at @s run effect give @a[distance=..7,team=Blue] minecraft:jump_boost 30 1 true
execute as @e[tag=071AirBlue3] at @s run effect give @a[distance=..7,team=Blue] minecraft:resistance 1 1 true

execute as @e[tag=071AirRed4] at @s run effect give @a[distance=..7,team=Red] minecraft:speed 30 0 true
execute as @e[tag=071AirRed4] at @s run effect give @a[distance=..7,team=Red] minecraft:jump_boost 30 1 true
execute as @e[tag=071AirRed4] at @s run effect give @a[distance=..7,team=Red] minecraft:resistance 1 2

execute as @e[tag=071AirRed4] at @s run scoreboard players add @a[distance=..7,team=Red] CT1 1
execute as @e[tag=071AirRed4] at @s run scoreboard players add @a[distance=..7,team=Red] CT2 1
execute as @e[tag=071AirRed4] at @s run scoreboard players add @a[distance=..7,team=Red] CT3 1

execute as @e[tag=071AirBlue4] at @s run effect give @a[distance=..7,team=Blue] minecraft:speed 30 0 true
execute as @e[tag=071AirBlue4] at @s run effect give @a[distance=..7,team=Blue] minecraft:jump_boost 30 1 true
execute as @e[tag=071AirBlue4] at @s run effect give @a[distance=..7,team=Blue] minecraft:resistance 1 2

execute as @e[tag=071AirBlue4] at @s run scoreboard players add @a[distance=..7,team=Blue] CT1 1
execute as @e[tag=071AirBlue4] at @s run scoreboard players add @a[distance=..7,team=Blue] CT2 1
execute as @e[tag=071AirBlue4] at @s run scoreboard players add @a[distance=..7,team=Blue] CT3 1