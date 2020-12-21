particle lava ~ ~ ~ 0 0 0 1 20
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1 0.5

execute if entity @s[team=Red] run effect give @e[distance=..4,team=Blue,tag=Battle] minecraft:instant_damage 1 1
execute if entity @s[team=Red] run effect give @e[distance=..2,team=Blue,tag=Battle] minecraft:instant_damage 1 1
execute if entity @s[team=Red] run effect give @e[distance=..4,team=Blue,tag=Battle] minecraft:slowness 2 1
execute if entity @s[team=Blue] run effect give @e[distance=..4,team=Red,tag=Battle] minecraft:instant_damage 1 0
execute if entity @s[team=Blue] run effect give @e[distance=..2,team=Red,tag=Battle] minecraft:instant_damage 1 1
execute if entity @s[team=Blue] run effect give @e[distance=..4,team=Red,tag=Battle] minecraft:slowness 2 1


scoreboard players set @s usedSkill 2
tag @s remove fall400