particle minecraft:flame ~ ~ ~ 0 0 0 0.1 3 force
particle minecraft:dust 1 0 0 1 ~ ~ ~ 1 1 1 0 5 force
particle minecraft:dust 0 0 0 1 ~ ~ ~ 1 1 1 0 5 force
playsound minecraft:block.campfire.crackle master @a ~ ~ ~ 0.08 1.7

scoreboard players remove @s counter 1
execute unless score @s counter matches 1.. run tag @s add 129-silenth-end

execute if entity @s[tag=129-silenth-end] run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=129-silenth-end] run kill @s