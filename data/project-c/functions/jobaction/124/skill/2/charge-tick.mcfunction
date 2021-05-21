tag @s add this
execute as @a[scores={jobNumber=124}] if score @s playerNumber = #124- playerNumber at @s anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^ ~ ~
execute as @a[scores={jobNumber=124}] if score @s playerNumber = #124- playerNumber positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={jobNumber=124}] if score @s playerNumber = #124- playerNumber run tp @s @s
tag @s remove this
particle minecraft:falling_dust emerald_block ^ ^ ^1 1 1 1 1 4 normal @a
execute if score @s counter matches 1 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.50 0.50
execute if score @s counter matches 3 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.55 0.55
execute if score @s counter matches 5 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.60 0.60
execute if score @s counter matches 7 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.65 0.65
execute if score @s counter matches 9 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.70 0.70
execute if score @s counter matches 11 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.75 0.75
execute if score @s counter matches 13 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.80 0.80
execute if score @s counter matches 15 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.85 0.85
execute if score @s counter matches 17 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.90 0.90
execute if score @s counter matches 19 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 0.95 0.95
execute if score @s counter matches 21 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 1.00 1.00
execute if score @s counter matches 23 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 1.10 1.10
execute if score @s counter matches 25 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 1.20 1.20
execute if score @s counter matches 27 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 1.30 1.30
execute if score @s counter matches 29 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 1.40 1.40
execute if score @s counter matches 31 run playsound minecraft:entity.wither.shoot master @a ~ ~-1.9 ~ 1.50 1.50
execute if score @s counter matches 34 run playsound minecraft:item.crossbow.shoot master @a ~ ~-1.9 ~ 2.15 1.15

execute if score @s counter matches 21 rotated ~180 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 20 normal @a
execute if score @s counter matches 19 rotated ~162 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 19 rotated ~-162 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 17 rotated ~144 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 17 rotated ~-144 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 15 rotated ~126 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 15 rotated ~-126 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 13 rotated ~108 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 13 rotated ~-108 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 11 rotated ~90 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 11 rotated ~-90 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 9 rotated ~72 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 9 rotated ~-72 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 7 rotated ~54 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 7 rotated ~-54 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 5 rotated ~36 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 5 rotated ~-36 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 3 rotated ~18 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 3 rotated ~-18 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 1 rotated ~0 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 20 normal @a
execute if score @s counter matches 22 rotated ~171 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 22 rotated ~-171 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 24 rotated ~153 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 24 rotated ~-153 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 26 rotated ~135 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 26 rotated ~-135 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 27 rotated ~117 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 27 rotated ~-117 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 30 rotated ~99 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 30 rotated ~-99 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 32 rotated ~81 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 32 rotated ~-81 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 34 rotated ~63 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a
execute if score @s counter matches 34 rotated ~-63 0 positioned ^ ^ ^2 run particle minecraft:cloud ~ ~-1 ~ 0 2 0 0.5 10 normal @a

particle minecraft:firework ^-1 ^ ^2.5 0.6 0.6 0.6 0.03 1 normal @a
execute rotated ~ ~ run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~10 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-10 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~20 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-20 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~30 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-30 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~40 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-40 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~50 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-50 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~60 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-60 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~70 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-70 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~80 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-80 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~90 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-90 run particle minecraft:dust 0.278 0.733 0.431 0.65 ^ ^ ^2.5 0.35 0.35 0.35 0 7 force @a

scoreboard players add @s subcounter 8
scoreboard players operation @s counter_3 = @s subcounter
execute if score @s counter_3 matches 256.. at @s run tp @s ^ ^ ^-2.56
execute if score @s counter_3 matches 256.. run scoreboard players remove @s counter_3 256
execute if score @s counter_3 matches 128.. at @s run tp @s ^ ^ ^-1.28
execute if score @s counter_3 matches 128.. run scoreboard players remove @s counter_3 128
execute if score @s counter_3 matches 64.. at @s run tp @s ^ ^ ^-0.64
execute if score @s counter_3 matches 64.. run scoreboard players remove @s counter_3 064
execute if score @s counter_3 matches 32.. at @s run tp @s ^ ^ ^-0.32
execute if score @s counter_3 matches 32.. run scoreboard players remove @s counter_3 032
execute if score @s counter_3 matches 16.. at @s run tp @s ^ ^ ^-0.16
execute if score @s counter_3 matches 16.. run scoreboard players remove @s counter_3 016
execute if score @s counter_3 matches 8.. at @s run tp @s ^ ^ ^-0.08
execute if score @s counter_3 matches 8.. run scoreboard players remove @s counter_3 008
execute if score @s counter_3 matches 4.. at @s run tp @s ^ ^ ^-0.04
execute if score @s counter_3 matches 4.. run scoreboard players remove @s counter_3 004
execute if score @s counter_3 matches 2.. at @s run tp @s ^ ^ ^-0.02
execute if score @s counter_3 matches 2.. run scoreboard players remove @s counter_3 002
execute if score @s counter_3 matches 1.. at @s run tp @s ^ ^ ^-0.01
execute if score @s counter_3 matches 1.. run scoreboard players remove @s counter_3 001

execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^-0.4 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^0.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^0.4 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^0.8 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^1.2 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^1.6 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^2.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^2.4 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^2.8 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^3.2 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^3.6 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^4.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^4.4 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^4.8 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^ ^5.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^0.1 ^ ^4.8 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^-0.1 ^ ^4.8 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^0.1 ^4.8 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^-0.1 ^4.8 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^0.2 ^ ^4.6 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^-0.2 ^ ^4.6 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^0.2 ^4.6 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^-0.2 ^4.6 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^0.3 ^ ^4.3 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^-0.3 ^ ^4.3 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^0.3 ^4.3 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^-0.3 ^4.3 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^0.4 ^ ^4.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^-0.4 ^ ^4.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^0.4 ^4.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^-0.4 ^4.0 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^0.5 ^ ^4.7 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^-0.5 ^ ^4.7 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^0.5 ^4.7 0 0 0 0 1 force @a
execute at @s positioned ^-0.24 ^-0.12 ^ run particle minecraft:enchanted_hit ^ ^-0.5 ^4.7 0 0 0 0 1 force @a

tp @s ~ ~ ~ ~ ~

#particle minecraft:dust 0.7 0.8 0.7 1 ^ ^0.0 ^ 0.05 0.05 0.05 0 1 force @a
execute store result score @s CT1 run data get entity @s Rotation[1] 10
scoreboard players operation @s CT2 = @s CT1

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation @s CT1 -= @s subcounter
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^2.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^3.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^3.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^4.0 ^ 0.05 0.05 0.05 0 1 force @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^4.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^4.8 ^ 0.05 0.05 0.05 0 1 normal @a

execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^5.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^5.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^6.0 ^ 0.05 0.05 0.05 0 1 force @a

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation @s CT2 += @s subcounter
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-2.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-3.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-3.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-4.0 ^ 0.05 0.05 0.05 0 1 force @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-4.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-4.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-5.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-5.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:dust 0.7 0.8 0.7 1 ^ ^-6.0 ^ 0.05 0.05 0.05 0 1 force @a

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation @s CT1 += @s subcounter