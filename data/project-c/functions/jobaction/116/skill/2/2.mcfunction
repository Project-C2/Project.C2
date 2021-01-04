execute if entity @s[team=Red] as @e[distance=..4,team=!Red,tag=Battle] run function project-c:jobaction/116/skill/2/hit
execute if entity @s[team=Blue] as @e[distance=..4,team=!Blue,tag=Battle] run function project-c:jobaction/116/skill/2/hit

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 1
execute rotated ~ 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~20 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~40 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~60 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~80 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~100 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~120 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~140 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~160 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~180 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~200 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~220 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~240 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~260 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~280 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~300 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~320 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~340 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~ 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~20 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~40 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~60 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~80 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~100 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~120 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~140 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~160 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~180 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~200 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~220 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~240 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~260 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~280 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~300 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~320 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~340 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 400 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 100 force @a
