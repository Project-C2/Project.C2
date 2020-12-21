scoreboard players set @s CT1 1100


playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 2
data merge block -61 2 -122 {auto:1b}


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1