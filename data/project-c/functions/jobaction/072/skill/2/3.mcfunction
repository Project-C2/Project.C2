particle witch ~ ~ ~ 0 0 0 0.1 5 force
particle sweep_attack ~ ~ ~ 0 0 0 0.3 2 force
particle flash ~ ~ ~ 0 0 0 0 2 force
teleport @s ^ ^ ^1 ~ ~
scoreboard players add @s counter 1

execute as @s[tag=072-koziroR] at @s positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[team=Blue,distance=..2] instant_damage 1 0 true

execute as @s[tag=072-koziroB] at @s positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[team=Red,distance=..2] instant_damage 1 0 true

kill @s[scores={counter=65..}]