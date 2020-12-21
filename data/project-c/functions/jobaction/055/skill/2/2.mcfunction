tag @s add 055-2G
execute as @s[tag=055-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^50 ^ ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^-50 ^ ^ ~-3 ~
execute as @s[tag=055-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^-50 ^ ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^50 ^ ^ ~3 ~
execute as @s[tag=055-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^50 ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^ ^-50 ^ ~ ~-3
execute as @s[tag=055-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^-50 ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^ ^50 ^ ~ ~3

execute as @s[tag=055-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^50 ^ ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^-50 ^ ^ ~-3 ~
execute as @s[tag=055-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^-50 ^ ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^50 ^ ^ ~3 ~
execute as @s[tag=055-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^50 ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^ ^-50 ^ ~ ~-3
execute as @s[tag=055-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^-50 ^ if entity @s[distance=..49] run teleport @e[tag=055-2G] ^ ^50 ^ ~ ~3
execute if entity @s[scores={counter_1=..40,counter=20..}] run teleport @s ^ ^ ^0.5

execute as @s[tag=055-2R,scores={counter_1=0}] at @s run execute if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=5..8] unless entity @s[gamemode=spectator] run scoreboard players set @s counter_1 60
execute as @s[tag=055-2B,scores={counter_1=0}] at @s run execute if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=5..8] unless entity @s[gamemode=spectator] run scoreboard players set @s counter_1 60
execute as @s[tag=055-2,scores={counter_1=50}] at @s run particle minecraft:explosion ~ ~1.5 ~ 0 0 0 1 3 force
execute as @s[tag=055-2,scores={counter_1=50}] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1

execute as @s[tag=055-2R,scores={counter_1=50}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["055-fannelBullet","055-fannelBulletR"],Marker:1b}
execute as @s[tag=055-2B,scores={counter_1=50}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["055-fannelBullet","055-fannelBulletB"],Marker:1b}

execute as @s[tag=055-2R,scores={counter_1=50}] at @s run tp @e[tag=055-fannelBulletR,limit=1,sort=nearest] ^ ^1 ^1 facing entity @e[team=Blue,limit=1,sort=nearest,tag=Battle]
execute as @s[tag=055-2B,scores={counter_1=50}] at @s run tp @e[tag=055-fannelBulletB,limit=1,sort=nearest] ^ ^1 ^1 facing entity @e[team=Red,limit=1,sort=nearest,tag=Battle]

execute as @s[tag=055-2,scores={counter_1=50}] at @s run scoreboard players add @s counter_2 1

execute as @s[tag=055-2,scores={counter_1=50,counter_2=4..}] at @s run kill @s

execute as @s[tag=055-2R,scores={counter=160}] at @s run tp @s ^ ^ ^ facing entity @e[tag=Battle,team=Blue,limit=1,sort=nearest]
execute as @s[tag=055-2R,scores={counter=160}] at @s run tp @s ^ ^ ^ ~180 0

execute as @s[tag=055-2R,scores={counter=320}] at @s run tp @s ^ ^ ^ facing entity @e[tag=Battle,team=Blue,limit=1,sort=nearest]
execute as @s[tag=055-2R,scores={counter=320}] at @s run tp @s ^ ^ ^ ~-180 0

execute as @s[tag=055-2B,scores={counter=160}] at @s run tp @s ^ ^ ^ facing entity @e[tag=Battle,team=Red,limit=1,sort=nearest]
execute as @s[tag=055-2B,scores={counter=160}] at @s run tp @s ^ ^ ^ ~180 0

execute as @s[tag=055-2B,scores={counter=320}] at @s run tp @s ^ ^ ^ facing entity @e[tag=Battle,team=Red,limit=1,sort=nearest]
execute as @s[tag=055-2B,scores={counter=320}] at @s run tp @s ^ ^ ^ ~-180 0

execute anchored eyes as @s unless block ^ ^ ^0.5 minecraft:air at @s run teleport @s ^ ^ ^-0.5 ~ ~-5

scoreboard players add @s counter 1
scoreboard players remove @s[scores={counter_1=1..}] counter_1 1
particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0 2 force
kill @s[scores={counter=400..}]
tag @s remove 055-2G

data merge block 61 8 -20 {auto:1b}