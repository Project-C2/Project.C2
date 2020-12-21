tag @s add 084-ohudaG
execute as @s[tag=084-ohudaR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^-100 ^ ^ ~-3 ~
execute as @s[tag=084-ohudaR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^100 ^ ^ ~3 ~
execute as @s[tag=084-ohudaR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^ ^-100 ^ ~ ~-3
execute as @s[tag=084-ohudaR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^ ^100 ^ ~ ~3
tag @s add 084-ohudaG
execute as @s[tag=084-ohudaB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^-100 ^ ^ ~-3 ~
execute as @s[tag=084-ohudaB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^100 ^ ^ ~3 ~
execute as @s[tag=084-ohudaB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^ ^-100 ^ ~ ~-3
execute as @s[tag=084-ohudaB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=084-ohudaG] ^ ^100 ^ ~ ~3
execute if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute unless block ^ ^ ^1 air run kill @s

execute as @s[tag=084-ohudaR] run tag @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] add Damage2
execute as @s[tag=084-ohudaR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute as @s[tag=084-ohudaR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.45
execute as @s[tag=084-ohudaR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run kill @s

execute as @s[tag=084-ohudaB] run tag @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] add Damage2
execute as @s[tag=084-ohudaB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute as @s[tag=084-ohudaB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.45
execute as @s[tag=084-ohudaB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run kill @s

execute if entity @s[scores={counter=4..}] run playsound minecraft:entity.egg.throw master @a ~ ~ ~ 0.5 0
scoreboard players add @s counter 1
particle minecraft:firework ~ ~ ~ 0 0 0 0.1 1 force
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0.1 1 force
kill @s[scores={counter=30..}]
tag @s remove 084-ohudaG