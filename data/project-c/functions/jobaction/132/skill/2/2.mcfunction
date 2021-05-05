particle minecraft:dust 0 1 0 3 ~ ~ ~ 1 1 1 0 1
effect give @s minecraft:strength 1 9
execute if entity @s run function project-c:general/effect/checkeffect

tag @s[scores={adDealt=1..}] remove 132-Buffed
execute if entity @s[scores={adDealt=1..}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
scoreboard players reset @s[scores={adDealt=1..}] adDealt