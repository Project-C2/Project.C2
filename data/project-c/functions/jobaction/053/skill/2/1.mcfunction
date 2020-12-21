tag @s add 053-2G
execute as @s[tag=053-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^-100 ^ ^ ~-5 ~
execute as @s[tag=053-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^100 ^ ^ ~5 ~
execute as @s[tag=053-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^ ^-100 ^ ~ ~-5
execute as @s[tag=053-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^ ^100 ^ ~ ~5
tag @s add 053-2G
execute as @s[tag=053-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^-100 ^ ^ ~-5 ~
execute as @s[tag=053-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^100 ^ ^ ~5 ~
execute as @s[tag=053-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^ ^-100 ^ ~ ~-5
execute as @s[tag=053-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=053-2G] ^ ^100 ^ ~ ~5
teleport @s ^ ^ ^0.5

execute as @s[tag=053-2R] run tag @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] add Damage2
execute as @s[tag=053-2R] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.25 20 force @a
execute as @s[tag=053-2R] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.45
execute as @s[tag=053-2R] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run kill @s

execute as @s[tag=053-2B] run tag @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] add Damage2
execute as @s[tag=053-2B] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.25 20 force @a
execute as @s[tag=053-2B] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.45
execute as @s[tag=053-2B] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run kill @s

execute if entity @s[scores={counter=20..}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.25 1
scoreboard players add @s counter 1
particle minecraft:dust 1000 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 5 force
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 1 force
kill @s[scores={counter=100..}]
tag @s remove 053-2G