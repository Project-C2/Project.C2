execute rotated ~ ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~10 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~20 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~30 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~40 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~50 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~60 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~70 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~80 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~90 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~100 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~110 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~120 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~130 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~140 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~150 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~160 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~170 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~180 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~190 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~200 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~210 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~220 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~230 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~240 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~250 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~260 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~270 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~280 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~290 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~300 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~310 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~320 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~330 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a
execute rotated ~340 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 force @a
execute rotated ~350 ~ run particle dust 1 1 1 3 ^ ^ ^10.0 0 0 0 0 1 normal @a

execute rotated ~ ~10 run tp @s ~ ~ ~ ~ ~
execute if entity @s[x_rotation=90] rotated ~ ~10 run tp @s ~ ~ ~ ~ -80




scoreboard players add @s counter_1 1
scoreboard players add @s counter_2 1

execute if score @s counter matches 5 if entity @s[tag=099-Red] as @e[distance=..10,tag=!099-S2-area-ed,tag=Battle,team=!Red] run function project-c:jobaction/099/skill/2/hit
execute if score @s counter matches 5 if entity @s[tag=099-Blue] as @e[distance=..10,tag=!099-S2-area-ed,tag=Battle,team=!Blue] run function project-c:jobaction/099/skill/2/hit


execute if entity @s[tag=099-Red] if entity @a[scores={jobNumber=99},team=Red,limit=1] as @a[scores={jobNumber=99},team=Red] run function project-c:jobaction/099/skill/2/own
execute if entity @s[tag=099-Blue] if entity @a[scores={jobNumber=99},team=Blue,limit=1] as @a[scores={jobNumber=99},team=Blue] run function project-c:jobaction/099/skill/2/own


execute if entity @s[tag=099-Red] if entity @e[tag=Battle,tag=099-S2-area-ed,team=!Red,limit=1] as @e[tag=Battle,tag=099-S2-area-ed,team=!Red] at @s run function project-c:jobaction/099/skill/2/area-check
execute if entity @s[tag=099-Blue] if entity @e[tag=Battle,tag=099-S2-area-ed,team=!Blue,limit=1] as @e[tag=Battle,tag=099-S2-area-ed,team=!Blue] at @s run function project-c:jobaction/099/skill/2/area-check