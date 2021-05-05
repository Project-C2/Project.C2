execute if entity @s[x_rotation=-90..-55] store result entity @s Rotation[0] float 0.01 run scoreboard players add @s counter_1 1440
execute if entity @s[x_rotation=-90..-55] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s counter_2
execute if entity @s[x_rotation=-90..-55] at @s rotated ~ ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 force @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~45 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~90 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~135 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~180 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 force @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~225 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~270 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~315 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] run tp @s ~ ~ ~ ~ ~12
execute unless entity @s[x_rotation=-90..-55] if entity @s[x_rotation=78..90] run tp @s ~ ~ ~ ~ ~-168
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~ run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 force @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~45 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~90 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~135 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~180 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 force @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~225 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~270 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~315 run particle minecraft:dust 1 1 0.2 1 ^ ^ ^0.8 0 0 0 0 1 normal @a

scoreboard players add @s counter 1

execute as @s[tag=131-GateR,scores={counter=41}] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-GateLaser","131-GateLaserR","131-GateLSummon"]}
execute as @s[tag=131-GateR,scores={counter=41}] at @s run teleport @e[tag=131-GateLSummon,limit=1,sort=nearest] ^ ^ ^ ~ ~20
execute as @s[tag=131-GateR,scores={counter=41}] at @s run tag @e[tag=131-GateLSummon,tag=131-GateLSummon] remove 131-GateLSummon

execute as @s[tag=131-GateB,scores={counter=41}] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-GateLaser","131-GateLaserB","131-GateLSummon"]}
execute as @s[tag=131-GateB,scores={counter=41}] at @s run teleport @e[tag=131-GateLSummon,limit=1,sort=nearest] ^ ^ ^ ~ ~20
execute as @s[tag=131-GateB,scores={counter=41}] at @s run tag @e[tag=131-GateLSummon,tag=131-GateLSummon] remove 131-GateLSummon
execute as @s[scores={counter=41}] at @s run particle minecraft:end_rod ^ ^ ^ 0 0 0 0.5 30 force @a
execute as @s[scores={counter=41}] at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.3
execute as @s[scores={counter=41}] at @s run function project-c:jobaction/131/skill/3/5
kill @s[scores={counter=61..}]