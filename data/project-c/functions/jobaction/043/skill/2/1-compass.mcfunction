scoreboard players add #043-dummy counter 1
execute if score #043-dummy counter matches 1 run effect give @s minecraft:resistance 1 0
execute if score #043-dummy counter matches 1 run effect give @s minecraft:speed 1 0
execute unless entity @s[distance=..1] positioned ~ ~1.15 ~ run particle minecraft:end_rod ^ ^ ^1 0 0 0 0 1 force @a
execute unless score #043-dummy counter matches 16.. unless entity @s[distance=..1] positioned ^ ^ ^1 run function project-c:jobaction/043/skill/2/1-compass