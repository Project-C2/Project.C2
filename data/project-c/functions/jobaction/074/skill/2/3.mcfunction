scoreboard players add #074operate counter 1
execute if score #074operate counter matches 3.. at @e[tag=074lava_blocking] run particle minecraft:flame ~ ~ ~ 0 0 0 0.03 1 force @a
execute if score #074operate counter matches 3.. run scoreboard players set #074operate counter 0