execute if entity @s[x_rotation=-90..-55] store result entity @s Rotation[0] float 0.01 run scoreboard players add @s counter_1 1440
execute if entity @s[x_rotation=-90..-55] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s counter_2
execute if entity @s[x_rotation=-90..-55] at @s rotated ~ ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 force @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~45 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~90 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~135 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~180 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 force @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~225 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~270 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~315 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a

execute unless entity @s[x_rotation=-90..-55] run tp @s ~ ~ ~ ~ ~12
execute unless entity @s[x_rotation=-90..-55] if entity @s[x_rotation=78..90] run tp @s ~ ~ ~ ~ ~-168
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~ run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 force @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~45 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~90 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~135 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~180 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 force @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~225 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~270 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~315 run particle minecraft:sweep_attack ^ ^ ^2 0.1 0.1 0.1 0 1 normal @a

scoreboard players add @s counter 1

execute as @s[tag=128-WhirlwindR] at @s run effect give @e[team=Blue,distance=0..3.5,tag=Battle] instant_damage 1 0
execute as @s[tag=128-WhirlwindB] at @s run effect give @e[team=Red,distance=0..3.5,tag=Battle] instant_damage 1 0
kill @s[scores={counter=10..}]

execute as @e[tag=128-Whirlwind] at @s run function project-c:jobaction/128/skill/1/2