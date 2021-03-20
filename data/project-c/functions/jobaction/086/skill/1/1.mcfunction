particle minecraft:sweep_attack ~ ~0.3 ~ 2 2 2 0 80
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 50
execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..4] instant_damage 1 0
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..4] instant_damage 1 0

effect clear @s wither
effect clear @s poison
effect give @s fire_resistance 1 0

scoreboard players set @s CT1 1200
scoreboard players set @s counter_3 60
scoreboard players set @s counter_1 0