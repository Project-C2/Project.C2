scoreboard players add @s counter 1

execute as @s unless block ^ ^ ^1 minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0
execute as @s unless block ^ ^ ^1 minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 2 force @a

execute as @s unless block ^ ^ ^1 minecraft:air at @s run kill @s

execute if entity @s[tag=055-fannelBulletR] run execute as @e[distance=..1.5,team=!Red,tag=Battle] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"フィン・ファンネル","color":"yellow"}',Motion:[0.0,-1.5,0.0],life:1200,color:-1b}
execute if entity @s[tag=055-fannelBulletR] run execute as @e[distance=..1.5,team=!Red,tag=Battle] at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 3 force @a
execute if entity @s[tag=055-fannelBulletR] run execute as @e[distance=..1.5,team=!Red,tag=Battle] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0
execute if entity @s[tag=055-fannelBulletR] run execute if entity @e[distance=..1.5,team=!Red,tag=Battle] at @s run kill @s

execute if entity @s[tag=055-fannelBulletB] run execute as @e[distance=..1.5,team=!Blue,tag=Battle] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"フィン・ファンネル","color":"yellow"}',Motion:[0.0,-1.5,0.0],life:1200,color:-1b}
execute if entity @s[tag=055-fannelBulletB] run execute as @e[distance=..1.5,team=!Blue,tag=Battle] at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 3 force @a
execute if entity @s[tag=055-fannelBulletB] run execute as @e[distance=..1.5,team=!Blue,tag=Battle] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0
execute if entity @s[tag=055-fannelBulletB] run execute if entity @e[distance=..1.5,team=!Blue,tag=Battle] at @s run kill @s

teleport @s ^ ^ ^1 ~ ~

particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
kill @s[scores={counter=20..}]