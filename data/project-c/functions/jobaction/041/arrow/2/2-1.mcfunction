playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1.7
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1.7
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0.69
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0.69
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.75
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
particle minecraft:flame ~ ~ ~ 0 0 0 1 210 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 1 70 force @a
particle minecraft:lava ~ ~2 ~ 3 2 3 1 60 normal @a
particle minecraft:lava ~ ~2 ~ 3 2 3 1 20 force @a
particle minecraft:explosion ~ ~ ~ 0.1 4 0.1 1 50
execute store result score @s counter_3 run data get entity @s Rotation[0] -10
scoreboard players set @s counter_1 0
