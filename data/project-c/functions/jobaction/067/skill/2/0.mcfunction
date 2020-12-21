scoreboard players set @s CT2 1000

tag @e[tag=067-checked] add 067-2
tag @e[tag=067-checked] remove 067-checked

data merge block -47 2 31 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2