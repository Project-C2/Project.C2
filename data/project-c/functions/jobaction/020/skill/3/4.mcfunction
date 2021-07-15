execute if entity @s[scores={counter=40..}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 10 force @a
execute if entity @s[scores={counter=40..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 6 force @a

execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] store result entity @s Rotation[0] float 0.01 run scoreboard players add @s counter_1 1440
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s counter_2
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~ ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 force @a
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~45 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~90 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~135 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~180 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 force @a
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~225 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~270 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute if entity @s[x_rotation=-90..-55,scores={counter=40..}] at @s rotated ~315 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] run tp @s ~ ~ ~ ~ ~12
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] if entity @s[x_rotation=78..90] run tp @s ~ ~ ~ ~ ~-168
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~ run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 force @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~45 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~90 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~135 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~180 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 force @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~225 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~270 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a
execute unless entity @s[x_rotation=-90..-55,scores={counter=40..}] rotated ~90 ~315 run particle minecraft:flame ^ ^ ^2 0 0 0 0.0000095 1 normal @a

scoreboard players add @s counter 1
execute if entity @s[scores={counter=40..}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.4 0
execute if entity @s[scores={counter=40..}] as @e[distance=..3,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run effect give @s instant_damage 1 1


kill @s[scores={counter=80..}]