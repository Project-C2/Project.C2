tp @s ~ ~ ~ ~-1.4 ~
execute if score @s counter matches 01..25 at @s run tp @s ~ ~ ~ ~ ~-0.2
execute if score @s counter matches 26..50 at @s run tp @s ~ ~ ~ ~ ~0.2
execute if score @s counter matches 51.. run scoreboard players set @s counter 0
tag @s add now
execute at @s rotated ~ ~ run function project-c:jobaction/117/skill/2/loop3
tag @s remove now

execute rotated ~0 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 force @a
execute rotated ~24 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~48 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~72 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~96 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~120 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~144 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~168 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~192 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 force @a
execute rotated ~216 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~240 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~264 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~288 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a
execute rotated ~312 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 force @a
execute rotated ~336 0 run particle damage_indicator ^ ^ ^10.3 0.3 0.3 0.3 0.03 1 normal @a