#CT
scoreboard players set @s CT2 600
#スキル効果
#共通
tag @s add 053-2-1
#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 25 2 -20 {auto:1b}