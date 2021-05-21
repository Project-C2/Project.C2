#CT
scoreboard players set @s CT3 300

#スキル効果
tag @s add 046-3-1a
data merge block -69 2 -20 {auto:1b}

#演出
playsound minecraft:block.portal.travel master @a ~ ~ ~ 0.75 2
particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.5 1000


#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3