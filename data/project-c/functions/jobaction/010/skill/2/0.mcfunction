scoreboard players set @s CT2 800


playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 1 1
particle crit ~ ~ ~ 0.25 0 0.25 0.5 20

execute if entity @s[team=Red] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["BearTrap","Red"],Warmup:400}
execute if entity @s[team=Blue] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["BearTrap","Blue"],Warmup:400}

data merge block 1 2 -122 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2