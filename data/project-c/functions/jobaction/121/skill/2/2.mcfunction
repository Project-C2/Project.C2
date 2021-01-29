scoreboard players add @s counter 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
teleport @s ^ ^ ^2
execute unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 121Hit
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0
execute if entity @e[tag=1211,team=RedDummy] if entity @e[team=Blue,distance=..2] run tag @s add 121Hit
execute if entity @e[tag=1211,team=BlueDummy] if entity @e[team=Red,distance=..2] run tag @s add 121Hit
execute if entity @e[tag=121Hit,tag=121-firstRed] run execute as @e[distance=..2.5,team=Blue] at @s run effect give @s instant_damage 1 0
execute if entity @e[tag=121Hit,tag=121-firstBlue] run execute as @e[distance=..2.5,team=Red] at @s run effect give @s instant_damage 1 0
execute if entity @e[tag=121Hit,tag=121-firstRed] run execute as @e[distance=..2.5,team=Blue] at @s run effect give @s levitation 2 0
execute if entity @e[tag=121Hit,tag=121-firstBlue] run execute as @e[distance=..2.5,team=Red] at @s run effect give @s levitation 1 0


execute if entity @e[tag=121Hit] run kill @s

kill @s[scores={counter=7..}]
