particle spit ~ ~ ~ 0 0 0 0.3 10 force
particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 0.3 3 force
particle flash ~ ~ ~ 0 0 0 0 2 force
teleport @s ^ ^ ^2 ~ ~
scoreboard players add @s counter 1

execute as @s[team=RedDummy] at @s positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[team=Blue,distance=..2] resistance 1 0 true

execute as @s[team=BlueDummy] at @s positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[team=Red,distance=..2] resistance 1 0 true

execute as @s[team=RedDummy] at @s positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[team=Blue,distance=..2] instant_damage 1 1 true

execute as @s[team=BlueDummy] at @s positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[team=Red,distance=..2] instant_damage 1 1 true

kill @s[scores={counter=25..}]