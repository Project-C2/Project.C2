execute rotated ~ 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~10 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~20 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~30 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~40 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~50 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~60 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~70 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~80 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~90 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~100 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~110 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~120 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~130 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~140 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~150 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~160 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~170 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~180 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~190 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~200 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~210 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~220 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~230 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~240 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~250 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~260 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~270 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~280 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~290 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~300 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~310 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~320 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~330 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a
execute rotated ~340 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 force @a
execute rotated ~350 0 run particle minecraft:note ^ ^ ^1.5 0.2 0.5 0.2 1 5 normal @a

execute if entity @s[tag=095Red] as @e[distance=..1.5,tag=Battle,team=!Red] run effect give @s resistance 1 0 true
execute if entity @s[tag=095Blue] as @e[distance=..1.5,tag=Battle,team=!Blue] run effect give @s resistance 1 0 true
execute if entity @s[tag=095Red] as @e[distance=..1.5,tag=Battle,team=!Red] run function project-c:jobaction/095/skill/2/hit
execute if entity @s[tag=095Blue] as @e[distance=..1.5,tag=Battle,team=!Blue] run function project-c:jobaction/095/skill/2/hit

