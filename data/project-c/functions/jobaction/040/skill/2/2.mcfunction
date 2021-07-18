scoreboard players add @s counter 1
teleport @s ^ ^ ^1 ~ ~
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @e[distance=..3.0,tag=Battle,limit=1] as @e[distance=..3.0,tag=Battle] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
execute if entity @e[tag=hit,limit=1] run function project-c:general/teamcheck
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/040/skill/2/dmg
particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.4 0.4 0.4 0 1 force @a
particle minecraft:end_rod ^ ^ ^-0.25 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^-0.5 0 0 0 0 1 force @a
particle minecraft:end_rod ^ ^ ^-0.75 0 0 0 0 1 force @a
execute as @s unless block ^ ^ ^0.5 minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute as @s unless block ^ ^ ^ minecraft:air at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a
execute as @s unless block ^ ^ ^0.5 minecraft:air at @s run kill @s

execute if entity @s[scores={counter=60..}] run kill @s
