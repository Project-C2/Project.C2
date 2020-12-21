scoreboard players set @s CT3 0


execute if entity @s[team=Red] run kill @e[tag=Sculpture,team=Red,sort=nearest,limit=1]
execute if entity @s[team=Blue] run kill @e[tag=Sculpture,team=Blue,sort=nearest,limit=1]

effect give @s minecraft:instant_health 1 0
effect give @s minecraft:resistance 3 5

scoreboard players reset @s useTotem


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3