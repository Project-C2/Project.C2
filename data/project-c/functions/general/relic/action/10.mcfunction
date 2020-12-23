effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
effect clear @s minecraft:hunger
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:poison
effect clear @s minecraft:nausea
effect clear @s minecraft:blindness
effect clear @s minecraft:wither
effect clear @s minecraft:regeneration
effect give @s minecraft:fire_resistance 1 2 true
execute if entity @s[tag=!Regene] run tag @s add Regene

