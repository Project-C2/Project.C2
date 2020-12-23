tp @s @s
tag @s add parrt_antikb
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
particle minecraft:sweep_attack ~ ~1 ~ 1 0 1 1 32 normal @a
particle minecraft:sweep_attack ~ ~1 ~ 1 0 1 1 8 force @a

scoreboard players remove @s counter 80