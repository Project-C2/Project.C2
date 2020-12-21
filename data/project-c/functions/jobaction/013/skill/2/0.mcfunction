scoreboard players set @s CT2 1000


playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2
particle minecraft:firework ~ ~ ~ 3 0 3 0.5 100

execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..20] minecraft:glowing 5
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..20] minecraft:glowing 5


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2