scoreboard players set @s CT2 600


playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
particle block minecraft:quartz_block ~ ~1 ~ 0 0 0 2 50 normal @a

execute if entity @s[team=Red] run function project-c:jobaction/011/skill/2/red

execute if entity @s[team=Blue] run function project-c:jobaction/011/skill/2/blue

data merge block 13 2 -122 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2