scoreboard players add @s counter 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
teleport @s ^ ^ ^2
execute unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 121Hit
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0
execute if entity @e[tag=121-firstRed] run execute as @e[distance=..2.5,team=Blue] at @s run effect give @s resistance 1 3
execute if entity @e[tag=121-firstBlue] run execute as @e[distance=..2.5,team=Red] at @s run effect give @s resistance 1 3
execute if entity @e[tag=121-firstRed] run execute as @e[distance=..2.5,team=Blue] at @s run effect give @s instant_damage 1 0
execute if entity @e[tag=121-firstBlue] run execute as @e[distance=..2.5,team=Red] at @s run effect give @s instant_damage 1 0
execute if entity @e[tag=121-firstRed] run execute as @e[distance=..2.5,team=Blue] at @s run effect give @s levitation 3 0
execute if entity @e[tag=121-firstBlue] run execute as @e[distance=..2.5,team=Red] at @s run effect give @s levitation 3 0


execute if entity @e[tag=121Hit] run kill @s

kill @s[scores={counter=7..}]
