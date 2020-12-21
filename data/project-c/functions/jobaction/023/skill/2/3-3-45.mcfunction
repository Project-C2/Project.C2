execute at @e[tag=023-7-23p] if score @s playerNumber = @e[tag=023-7-23p,limit=1,distance=..0.01] playerNumber run tag @e[tag=023-7-23p,limit=1,distance=..0.01] add 023-select
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0.5
execute if entity @s[team=RedDummy] as @e[team=Blue,tag=Battle,limit=1,sort=nearest] run tag @s add 023-target
execute if entity @s[team=BlueDummy] as @e[team=Red,tag=Battle,limit=1,sort=nearest] run tag @s add 023-target
execute as @e[tag=023-select] at @s facing entity @e[tag=023-target,limit=1] feet run tp @s ~ ~1 ~ ~ ~
execute as @e[tag=023-select] store result score @s counter_1 run data get entity @s Rotation[0] 10
execute as @e[tag=023-select] run scoreboard players operation @s counter_1 += @s counter_3
execute as @e[tag=023-select] store result entity @s Rotation[0] float 0.1 run scoreboard players get @s counter_1
execute at @e[tag=023-target] run particle minecraft:barrier ~ ~1 ~ 0 0 0 1 1 force @a
execute at @e[tag=023-target] run particle minecraft:barrier ~ ~1 ~ 1.6 0.2 1.6 1 40 normal @a
execute at @e[tag=023-target] run particle minecraft:cloud ~ ~ ~ 3 3 3 0 60 normal @a
tag @e[tag=023-target] remove 023-target
tag @e[tag=023-select] remove 023-select