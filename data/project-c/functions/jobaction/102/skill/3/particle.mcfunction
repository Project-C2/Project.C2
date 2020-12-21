execute rotated ~0.0 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^0.5 0 0.1 0 0.243 0 force @a
execute rotated ~1.2 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^1.0 0 0.1 0 0.300 0 force @a
execute rotated ~2.4 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^1.5 0 0.1 0 0.363 0 force @a
execute rotated ~3.6 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^2.0 0 0.1 0 0.432 0 force @a
execute rotated ~4.8 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^2.5 0 0.1 0 0.507 0 force @a
execute rotated ~6.0 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^3.0 0 0.1 0 0.588 0 force @a
execute rotated ~7.2 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^3.5 0 0.1 0 0.675 0 force @a
execute rotated ~8.4 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^4.0 0 0.1 0 0.768 0 force @a
execute rotated ~9.6 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^4.5 0 0.1 0 0.867 0 force @a
execute rotated ~10.8 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^5.0 0 0.1 0 0.972 0 force @a
execute rotated ~12.0 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^5.5 0 0.1 0 1.083 0 force @a
execute rotated ~13.2 0 run particle minecraft:campfire_cosy_smoke ^ ^ ^6.0 0 0.1 0 1.200 0 force @a

scoreboard players remove @s counter_5 1
execute if score @s counter_5 matches 1.. rotated ~10 0 run function project-c:jobaction/102/skill/3/particle

