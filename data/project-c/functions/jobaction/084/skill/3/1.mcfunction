scoreboard players add @s counter 1

execute if entity @s[scores={counter=..10}] run teleport @s ^ ^ ^0.7 ~18 ~
execute if entity @s[scores={counter=11..60}] run teleport @s ^ ^ ^1 ~7 ~
execute if entity @s[scores={counter=60..}] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 1 force
execute if entity @s[scores={counter=60..63}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.3 1
execute if entity @s[scores={counter=61..}] run teleport @s ^ ^ ^1

execute if entity @s[scores={counter=61..}] run tag @s add 084-huuinG
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^-100 ^ ^ ~-5 ~
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^100 ^ ^ ~5 ~
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^ ^-100 ^ ~ ~-5
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Blue] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^ ^100 ^ ~ ~5
execute if entity @s[scores={counter=61..}] run tag @s add 084-huuinG
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^-100 ^ ^ ~-5 ~
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^-100 ^ ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^100 ^ ^ ~5 ~
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^100 ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^ ^-100 ^ ~ ~-5
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] at @s as @e[tag=Battle,limit=1,sort=nearest,team=Red] unless entity @s[gamemode=spectator] positioned ^ ^-100 ^ if entity @s[distance=..99] run teleport @e[tag=084-huuinG] ^ ^100 ^ ~ ~5


execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] run tag @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] add Damage2
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1.45
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..2] run kill @s

execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] run tag @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] add Damage2
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1.45
execute if entity @s[scores={counter=61..}] run execute as @s[tag=084-huuinB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..2] run kill @s


execute if entity @s[tag=084-huuin1] run particle dust 1 0 0 3 ~ ~ ~ 0 0 0 1 4 force @a
execute if entity @s[tag=084-huuin2] run particle dust 1 0.5 0 3 ~ ~ ~ 0 0 0 1 4 force @a
execute if entity @s[tag=084-huuin3] run particle dust 1 1 0 3 ~ ~ ~ 0 0 0 1 4 force @a
execute if entity @s[tag=084-huuin4] run particle dust 0.5 1 0 3 ~ ~ ~ 0 0 0 1 4 force @a
execute if entity @s[tag=084-huuin5] run particle dust 0 1 0 3 ~ ~ ~ 0 0 0 1 4 force @a
execute if entity @s[tag=084-huuin6] run particle dust 0 1 0.5 3 ~ ~ ~ 0 0 0 1 4 force @a
execute if entity @s[tag=084-huuin7] run particle dust 0 0.5 1 3 ~ ~ ~ 0 0 0 1 4 force @a
execute if entity @s[tag=084-huuin8] run particle dust 1 0 1 3 ~ ~ ~ 0 0 0 1 4 force @a

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 1 force
kill @s[scores={counter=200..}]
tag @s remove 084-huuinG