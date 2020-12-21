scoreboard players add @s counter_1 10
scoreboard players operation @s counter -= @s counter_1
execute unless block ^ ^ ^0.75 #project-c:wancomatter/like_air run scoreboard players set @s counter 0
execute unless block ^ ^ ^1.50 #project-c:wancomatter/like_air run scoreboard players set @s counter 0
execute if entity @s[tag=075crashRed] positioned ^ ^ ^0.00 as @e[distance=..3.0,tag=Battle,team=!Red] run tag @s add hit
execute if entity @s[tag=075crashBlue] positioned ^ ^ ^0.00 as @e[distance=..3.0,tag=Battle,team=!Blue] run tag @s add hit
execute if entity @s[tag=075crashRed] positioned ^ ^ ^0.75 as @e[distance=..3.0,tag=Battle,team=!Red] run tag @s add hit
execute if entity @s[tag=075crashBlue] positioned ^ ^ ^0.75 as @e[distance=..3.0,tag=Battle,team=!Blue] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/075/skill/2/hit
tp @s ^ ^ ^1.5
particle minecraft:explosion ^ ^ ^0.0 0 0 0 1 1 force @a
particle minecraft:explosion ^ ^ ^0.5 0 0 0 1 1 normal @a
particle minecraft:explosion ^ ^ ^1.0 0 0 0 1 1 normal @a
particle minecraft:sweep_attack ^ ^ ^0.0 1.8 1.8 1.8 1 15 force @a
particle minecraft:sweep_attack ^ ^ ^0.5 1.8 1.8 1.8 1 15 normal @a
particle minecraft:sweep_attack ^ ^ ^1.0 1.8 1.8 1.8 1 15 normal @a
execute if score @s counter_1 matches 20.. run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
execute unless score @s counter matches 1.. run function project-c:jobaction/075/skill/2/2

