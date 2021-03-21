tag @s[scores={counter=12..}] add 126-windG
execute as @s[tag=126-windR,scores={counter=12..}] at @s as @e[tag=126-windTR,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^-100 ^ ^ ~-7 ~
execute as @s[tag=126-windR,scores={counter=12..}] at @s as @e[tag=126-windTR,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^100 ^ ^ ~7 ~
execute as @s[tag=126-windR,scores={counter=12..}] at @s as @e[tag=126-windTR,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^ ^-100 ^ ~ ~-7
execute as @s[tag=126-windR,scores={counter=12..}] at @s as @e[tag=126-windTR,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^ ^100 ^ ~ ~7
tag @s add 126-windG
execute as @s[tag=126-windB,scores={counter=12..}] at @s as @e[tag=126-windTB,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^-100 ^ ^ ~-7 ~
execute as @s[tag=126-windB,scores={counter=12..}] at @s as @e[tag=126-windTB,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^100 ^ ^ ~7 ~
execute as @s[tag=126-windB,scores={counter=12..}] at @s as @e[tag=126-windTB,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^ ^-100 ^ ~ ~-7
execute as @s[tag=126-windB,scores={counter=12..}] at @s as @e[tag=126-windTB,limit=1,sort=nearest] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=126-windG] ^ ^100 ^ ~ ~7
teleport @s[scores={counter=12..}] ^ ^ ^0.6

execute if entity @s[tag=126-windR,scores={counter=12..}] run kill @e[tag=126-windTR,limit=1,sort=nearest,distance=..2]
execute if entity @s[tag=126-windB,scores={counter=12..}] run kill @e[tag=126-windTB,limit=1,sort=nearest,distance=..2]

execute as @s[tag=126-windR,scores={counter=12..}] run tag @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] add Damage2
execute as @s[tag=126-windR,scores={counter=12..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute as @s[tag=126-windR,scores={counter=12..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.45
execute as @s[tag=126-windR,scores={counter=12..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run kill @s

execute as @s[tag=126-windB,scores={counter=12..}] run tag @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] add Damage2
execute as @s[tag=126-windB,scores={counter=12..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute as @s[tag=126-windB,scores={counter=12..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.45
execute as @s[tag=126-windB,scores={counter=12..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run kill @s

execute if entity @s[scores={counter=12..}] run playsound minecraft:entity.egg.throw master @a ~ ~ ~ 0.5 0
scoreboard players add @s counter 1
execute if entity @s[scores={counter=12..}] run particle minecraft:falling_dust oak_leaves ~ ~1 ~ 0.2 0.2 0.2 0.1 3 force
execute if entity @s[scores={counter=12..}] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 1 force
execute if entity @s[scores={counter=12..}] run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0.1 1 force

execute if entity @s[tag=126-windR,scores={counter=60..}] run kill @e[tag=126-windTR,limit=1,sort=nearest]
execute if entity @s[tag=126-windB,scores={counter=60..}] run kill @e[tag=126-windTB,limit=1,sort=nearest]

kill @s[scores={counter=60..}]
tag @s remove 126-windG