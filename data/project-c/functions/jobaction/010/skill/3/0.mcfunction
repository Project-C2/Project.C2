scoreboard players set @s CT3 600


playsound minecraft:entity.skeleton.death master @a ~ ~ ~ 1 0.5
particle item minecraft:stick ~ ~1 ~ 0 0 0 0.2 100 normal @a

execute if entity @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:400,Tags:["SoundTrap","Red"]}
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:400,Tags:["SoundTrap","Blue"]}

data merge block 3 2 -122 {auto:1b}


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3