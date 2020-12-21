execute at @e[sort=nearest,limit=1,tag=102target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:3,Tags:["102pot_target","this"]}
scoreboard players operation @e[tag=this] playerNumber = @e[tag=102target,limit=1,sort=nearest] playerNumber
scoreboard players operation @s counter_5 = @e[tag=102target,limit=1,sort=nearest] playerNumber
execute as @e[tag=this] store result score @s counter_1 run data get entity @e[tag=102target,limit=1] Pos[0] 100
execute as @e[tag=this] store result score @s counter_2 run data get entity @e[tag=102target,limit=1] Pos[2] 100
tag @e[tag=102target] add 102target_delay
tag @e[tag=this] remove this

scoreboard players set @s counter 0
scoreboard players set @s counter_1 0
scoreboard players set @s counter_2 60
tag @s add 102skeleton_throw_pot
tag @e[tag=102target] remove 102target

