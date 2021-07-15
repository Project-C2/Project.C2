scoreboard players remove @s CT1 140
execute rotated ~ 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~10 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~20 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~30 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~40 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~50 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~60 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~70 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~80 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~90 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~100 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~110 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~120 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~130 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~140 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~150 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~160 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~170 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~180 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~190 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~200 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~210 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~220 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~230 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~240 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~250 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~260 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~270 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~280 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~290 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~300 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~310 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~320 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~330 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~340 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
execute rotated ~350 0 run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 1 normal @a
clear @s minecraft:golden_sword
scoreboard players reset @s counter_1
effect give @s minecraft:strength 4 4

#視線判定法を用いたターゲット指定
tag @s add 067dummy
execute if entity @s[team=Red] rotated as @s as @e[distance=..6,team=!Red,nbt=!{HurtTime:0s}] positioned as @s positioned ^ ^ ^-50 facing entity @a[tag=067dummy] feet positioned ^ ^ ^50 if entity @s[distance=..3.3] run tag @s add 067destory
execute if entity @s[team=Blue] rotated as @s as @e[distance=..6,team=!Blue,nbt=!{HurtTime:0s}] positioned as @s positioned ^ ^ ^-50 facing entity @a[tag=067dummy] feet positioned ^ ^ ^50 if entity @s[distance=..3.3] run tag @s add 067destory
tag @s remove 067dummy

playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.5 1.5
execute at @e[tag=067destory] run particle minecraft:enchanted_hit ~ ~ ~ 1.2 1.2 1.2 2 100 normal @a
execute at @e[tag=067destory] run particle minecraft:enchanted_hit ~ ~ ~ 1.2 1.2 1.2 0.6 80 normal @a
execute at @e[tag=067destory] run particle minecraft:enchanted_hit ~ ~ ~ 1.2 1.2 1.2 0.3 20 force @a
scoreboard players add @e[tag=067destory] stanTime 21
data merge block -113 2 -122 {auto:1b}

tag @e[tag=067destory] remove 067destory