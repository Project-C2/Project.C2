#CT
scoreboard players set @s CT1 1000
#スキル効果
#共通
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.75
particle explosion ~ ~1 ~ 0 0 0 0 3
#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1