scoreboard players operation @s HarfHP = @s HP
scoreboard players operation @s HarfHP /= #2 counter
scoreboard players operation @s HarfHP *= #100 counter
execute store result score @s ScoreToHealth run scoreboard players get @s HarfHP

effect give @s slow_falling 1 1 true
effect give @s instant_damage 1 1 true

effect give @s wither 3 4 true
effect give @s glowing 8 0 true


scoreboard players set @s OutCombat -100

execute if entity @s[team=Red] run tp @s @e[type=minecraft:area_effect_cloud,tag=VoidReturnRed,limit=1]
execute if entity @s[team=Blue] run tp @s @e[type=minecraft:area_effect_cloud,tag=VoidReturnBlue,limit=1]
