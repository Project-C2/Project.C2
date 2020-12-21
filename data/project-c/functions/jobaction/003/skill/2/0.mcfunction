scoreboard players set @s CT2 1000


playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1
particle large_smoke ~ ~0.1 ~ 0 0 0 0.5 100

execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..6,tag=Battle] minecraft:blindness 5 0
execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..6,tag=Battle] minecraft:slowness 5 2
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..6,tag=Battle] minecraft:blindness 5 0
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..6,tag=Battle] minecraft:slowness 5 2


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2