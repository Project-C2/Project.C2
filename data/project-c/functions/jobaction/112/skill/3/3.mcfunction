execute if entity @s[scores={counter=1}] run particle minecraft:smoke ~ ~2.5 ~ 0 0 0 0.2 20
execute if entity @s[scores={counter=1..41}] run teleport @s ^ ^0.3 ^

tag @s add 112-2G
execute as @s[tag=112-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^-100 ^ ^ ~-5 ~
execute as @s[tag=112-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^100 ^ ^ ~5 ~
execute as @s[tag=112-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^ ^-100 ^ ~ ~-5
execute as @s[tag=112-2R] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^ ^100 ^ ~ ~5
tag @s add 112-2G
execute as @s[tag=112-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^-100 ^ ^ ~-5 ~
execute as @s[tag=112-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^100 ^ ^ ~5 ~
execute as @s[tag=112-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^ ^-100 ^ ~ ~-5
execute as @s[tag=112-2B] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=112-2G] ^ ^100 ^ ~ ~5

execute as @s[tag=112-2R,scores={counter=41..}] run tag @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] add Damage2
execute as @s[tag=112-2R,scores={counter=41..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.25 1 force @a
execute as @s[tag=112-2R,scores={counter=41..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=112-2R,scores={counter=41..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run kill @s

execute as @s[tag=112-2B,scores={counter=41..}] run tag @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] add Damage2
execute as @s[tag=112-2B,scores={counter=41..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.25 1 force @a
execute as @s[tag=112-2B,scores={counter=41..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
execute as @s[tag=112-2B,scores={counter=41..}] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run kill @s

execute if entity @s[scores={counter=41}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter=41}] run particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.25 1 force @a
execute if entity @s[scores={counter=41..}] run teleport @s ^ ^ ^1.5


scoreboard players add @s counter 1
kill @s[scores={counter=60..}]
tag @s remove 112-2G