particle minecraft:dust 0 0 1 1.4 ^ ^ ^0.0 0 0 0 0 1 force @a
particle minecraft:dust 0 0 1 1.4 ^ ^ ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0 0 1 1.4 ^ ^ ^1.0 0 0 0 0 1 force @a
particle minecraft:dust 0 0 1 1.4 ^ ^ ^1.5 0 0 0 0 1 normal @a
particle minecraft:splash ^ ^ ^0.00 0 0 0 1 1 normal @a
particle minecraft:splash ^ ^ ^0.66 0 0 0 1 1 force @a
particle minecraft:splash ^ ^ ^1.33 0 0 0 1 1 normal @a
particle minecraft:end_rod ^ ^ ^0 0.5 0.5 0.5 0.2 7 force @a
particle minecraft:end_rod ^ ^ ^1 0.5 0.5 0.5 0.2 7 normal @a
execute unless block ^ ^ ^0.0 #project-c:wancomatter/like_air run scoreboard players set @s counter 90
execute unless block ^ ^ ^0.5 #project-c:wancomatter/like_air run scoreboard players set @s counter 90
execute if block ^ ^ ^0.0 minecraft:water run scoreboard players set @s counter 90
execute if block ^ ^ ^0.5 minecraft:water run scoreboard players set @s counter 90
#playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 0.7 2
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 1
tag @s add this
tp @s ^ ^ ^1.0
execute if entity @s[tag=110suirouR] at @s as @e[distance=..3.0,team=!Red,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add suirou-hit
execute if entity @s[tag=110suirouR] at @s as @e[distance=..3.0,team=!Red,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add suirou-hit
execute if entity @s[tag=110suirouB] at @s as @e[distance=..3.0,team=!Blue,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add suirou-hit
execute if entity @s[tag=110suirouB] at @s as @e[distance=..3.0,team=!Blue,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add suirou-hit
execute if entity @e[tag=suirou-hit,limit=1] at @e[tag=suirou-hit] run function project-c:jobaction/110/skills/18/hit
tag @s remove this


