#スキル14




scoreboard players add #106_short_teleport_p counter 1

execute positioned ^0.3 ^ ^ run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0 1 force @s
execute positioned ^-0.3 ^ ^ run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0 1 force @s
#execute if score #short_teleport_p value matches 5 run particle minecraft:crit ~ ~2 ~ 0 1.4 0 0 3 force @s
#execute positioned ^ ^ ^1.5 run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 force @s


execute if score #106_short_teleport_p counter matches ..15 positioned ^ ^ ^0.5 run function project-c:jobaction/106/items/skill/10/particle
execute unless score #106_short_teleport_p counter matches ..15 run scoreboard players reset #106_short_teleport_p
