scoreboard players set @s counter_3 -100
gamemode adventure @s

execute if entity @s[team=Red] as @e[distance=..3.5,team=!Red,tag=Battle] run function project-c:jobaction/092/skill/1/pickaxe/hit
execute if entity @s[team=Blue] as @e[distance=..3.5,team=!Blue,tag=Battle] run function project-c:jobaction/092/skill/1/pickaxe/hit
effect give @s minecraft:haste 3 3
effect give @s minecraft:levitation 1 9 true

playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 2
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
particle minecraft:cloud ~ ~ ~ 0 0 0 1 200 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 50 force @a
