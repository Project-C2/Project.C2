scoreboard players remove @s counter 1
execute if score @s counter matches 20.. run effect give @s speed 1 0
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["092-3"]}
execute store result entity @e[tag=092-3,limit=1,sort=nearest] Rotation[0] float 10 run scoreboard players get @s counter
execute rotated as @e[tag=092-3,limit=1,sort=nearest] positioned ^2 ^ ^ run particle minecraft:enchant ~ ~0.9 ~ 0.01 0.5 0.01 0.1 5 force @a
execute rotated as @e[tag=092-3,limit=1,sort=nearest] positioned ^-2 ^ ^ run particle minecraft:enchant ~ ~0.9 ~ 0.01 0.5 0.01 0.1 5 normal @a
execute rotated as @e[tag=092-3,limit=1,sort=nearest] positioned ^ ^ ^2 run particle minecraft:enchant ~ ~0.9 ~ 0.01 0.5 0.01 0.1 5 normal @a
execute rotated as @e[tag=092-3,limit=1,sort=nearest] positioned ^ ^ ^-2 run particle minecraft:enchant ~ ~0.9 ~ 0.01 0.5 0.01 0.1 5 normal @a
tag @e[tag=092-3] remove 092-3
effect clear @s strength
particle minecraft:ash ~ ~1 ~ 2 2 2 1 10
execute if score @s counter matches 0 run function project-c:jobaction/092/skill/3/2
