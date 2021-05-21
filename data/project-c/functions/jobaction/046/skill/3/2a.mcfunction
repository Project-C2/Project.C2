scoreboard players add @e[tag=046-3-1c] counter 1
execute as @e[tag=046-3-1c] at @s run particle dust 1.000 1.000 0.000 2 ~ ~1 ~ 0.25 0.25 0.25 1 3 normal
execute as @e[tag=046-3-1c,team=Red] at @s run tp @s ^ ^ ^1.5 ~ ~
execute as @e[tag=046-3-1c,team=Blue] at @s run tp @s ^ ^ ^1.5 ~ ~

execute as @s[tag=046-3-1c,team=Red] at @s if entity @e[distance=..3,team=Blue] run tag @s add 046-3-1d
execute as @s[tag=046-3-1c,team=Blue] at @s if entity @e[distance=..3,team=Red] run tag @s add 046-3-1d
#execute as @s unless block ^ ^ ^0.25 #project-c:wancomatter/like_air run tag @s add 046-3-1d

execute as @s[tag=046-3-1d] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute as @s[tag=046-3-1d] at @s run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a
execute as @s[tag=046-3-1d] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 30 force @a

execute as @s[tag=046-3-1d,tag=046-3-1c,team=Red] at @s run effect give @e[team=Blue,distance=0..3.5] instant_damage 1 1
execute as @s[tag=046-3-1d,tag=046-3-1c,team=Blue] at @s run effect give @e[team=Red,distance=0..3.5] instant_damage 1 1

execute as @s[tag=046-3-1d] at @s run kill @s

execute as @e[scores={counter=50..},tag=046-3-1c] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute as @e[scores={counter=50..},tag=046-3-1c] at @s run particle explosion ^ ^ ^ 0 0 0 0.5 2 force @a
execute as @e[scores={counter=50..},tag=046-3-1c] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 30 force @a

execute as @s[scores={counter=50..},tag=046-3-1c,team=Red] at @s run effect give @e[team=Blue,distance=0..3.5] instant_damage 1 1
execute as @s[scores={counter=50..},tag=046-3-1c,team=Blue] at @s run effect give @e[team=Red,distance=0..3.5] instant_damage 1 1

kill @e[scores={counter=50..},tag=046-3-1c]