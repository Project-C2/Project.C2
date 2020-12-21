execute if score @s counter matches 400.. run scoreboard players add @s subcounter 1
execute unless score @s counter matches 400.. run scoreboard players add @s counter 2

execute if score @s counter matches 128 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1
execute if score @s counter matches 128 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1
execute if score @s counter matches 128 run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.3 200 normal @a
execute if score @s counter matches 128 run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.3 50 force @a
execute if score @s counter matches 256 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 0.75
execute if score @s counter matches 256 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 0.75
execute if score @s counter matches 256 run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.5 400 normal @a
execute if score @s counter matches 256 run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.5 100 force @a
execute if score @s counter matches 384 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 384 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 384 run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.7 600 normal @a
execute if score @s counter matches 384 run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.7 150 force @a
execute if score @s counter matches 128 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal @a
execute if score @s counter matches 256 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 2 normal @a
execute if score @s counter matches 384 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 3 normal @a
execute if score @s counter matches 384 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if score @s counter matches 80 run playsound minecraft:item.crossbow.loading_middle master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 80 run playsound minecraft:item.crossbow.loading_middle master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 160 run playsound minecraft:item.crossbow.quick_charge_1 master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 160 run playsound minecraft:item.crossbow.quick_charge_1 master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 240 run playsound minecraft:item.crossbow.quick_charge_2 master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 240 run playsound minecraft:item.crossbow.quick_charge_2 master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 320 run playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 320 run playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~ ~ 2 0.5

particle minecraft:firework ^ ^ ^5 0.6 0.6 0.6 0.03 1 normal @a
execute rotated ~ ~ run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~5 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-5 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~10 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-10 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~15 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-15 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~20 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-20 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~25 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-25 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~30 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-30 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~35 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-35 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~40 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-40 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~45 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-45 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~50 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-50 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~55 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-55 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~60 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-60 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~65 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-65 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~70 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-70 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~75 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-75 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~80 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-80 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~85 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
#execute rotated ~ ~-85 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~90 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a
execute rotated ~ ~-90 run particle minecraft:dust 1 1 1 0.65 ^ ^ ^5 0.35 0.35 0.35 0 7 force @a

scoreboard players operation @s counter_3 = @s counter
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

execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^0.4 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^0.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^1.2 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^1.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^2.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^2.4 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^2.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^3.2 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^3.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^4.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^4.4 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^4.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^5.2 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^5.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^6.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^6.4 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^6.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^7.2 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^7.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^8.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^8.4 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^8.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^ ^9.5 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^0.1 ^ ^9.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^-0.1 ^ ^9.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^0.1 ^9.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^-0.1 ^9.8 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^0.2 ^ ^9.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^-0.2 ^ ^9.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^0.2 ^9.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^-0.2 ^9.6 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^0.3 ^ ^9.3 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^-0.3 ^ ^9.3 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^0.3 ^9.3 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^-0.3 ^9.3 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^0.4 ^ ^9.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^-0.4 ^ ^9.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^0.4 ^9.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^-0.4 ^9.0 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^0.5 ^ ^8.7 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^-0.5 ^ ^8.7 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^0.5 ^8.7 0 0 0 0 1 force @a
execute at @s positioned ^0.1 ^ ^ run particle minecraft:enchanted_hit ^ ^-0.5 ^8.7 0 0 0 0 1 force @a

tp @s ~ ~ ~

#particle minecraft:flame ^ ^0.0 ^ 0.05 0.05 0.05 0 1 force @a
execute store result score @s CT1 run data get entity @s Rotation[1] 10
scoreboard players operation @s CT2 = @s CT1

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation @s CT1 -= @s counter
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^0.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^0.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^1.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^1.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^2.0 ^ 0.05 0.05 0.05 0 1 force @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^2.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^2.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^3.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^3.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^4.0 ^ 0.05 0.05 0.05 0 1 force @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^4.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^4.8 ^ 0.05 0.05 0.05 0 1 normal @a

execute if score @s counter matches 120.. positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^5.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute if score @s counter matches 240.. positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^5.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute if score @s counter matches 320.. positioned ^ ^-5 ^ rotated as @s run particle minecraft:flame ^ ^6.0 ^ 0.05 0.05 0.05 0 1 force @a

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation @s CT2 += @s counter
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-0.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-0.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-1.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-1.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-2.0 ^ 0.05 0.05 0.05 0 1 force @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-2.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-2.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-3.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-3.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-4.0 ^ 0.05 0.05 0.05 0 1 force @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-4.4 ^ 0.05 0.05 0.05 0 1 normal @a
execute positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-4.8 ^ 0.05 0.05 0.05 0 1 normal @a
execute if score @s counter matches 120.. positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-5.2 ^ 0.05 0.05 0.05 0 1 normal @a
execute if score @s counter matches 240.. positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-5.6 ^ 0.05 0.05 0.05 0 1 normal @a
execute if score @s counter matches 320.. positioned ^ ^5 ^ rotated as @s run particle minecraft:flame ^ ^-6.0 ^ 0.05 0.05 0.05 0 1 force @a

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation @s CT1 += @s counter
execute if score @s subcounter matches 1 run effect give @a[tag=035-3A,limit=1,sort=nearest] levitation 10 0
execute if score @s subcounter matches 200 run tag @s add 035it
execute if score @s subcounter matches 200 run execute if entity @a[tag=035-3A,limit=1] as @a[tag=035-3A] if score @s playerNumber = @e[tag=035it,limit=1,sort=nearest] playerNumber at @s run function project-c:jobaction/035/skill/3/end
execute if score @s subcounter matches 200.. run kill @s