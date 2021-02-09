particle minecraft:smoke ^ ^1 ^ 0 0 0 0 1 force @a
scoreboard players add @s counter 1

tp @s ^ ^ ^0.9 ~ ~5
execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0

execute if entity @s[tag=111-dynamiteRed] unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run effect give @e[team=Blue,distance=0..3,tag=Battle] minecraft:resistance 1 1
execute if entity @s[tag=111-dynamiteBlue] unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run effect give @e[team=Red,distance=0..3,tag=Battle] minecraft:resistance 1 1

execute if entity @s[tag=111-dynamiteRed] unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run effect give @e[team=Blue,distance=0..3,tag=Battle] minecraft:instant_damage 1 1
execute if entity @s[tag=111-dynamiteBlue] unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run effect give @e[team=Red,distance=0..3,tag=Battle] minecraft:instant_damage 1 1

execute as @s unless block ^ ^ ^1 #project-c:wancomatter/like_air run kill @s

kill @s[scores={counter=50..}]