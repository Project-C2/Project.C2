#CT
scoreboard players set @s CT1 600
#スキル効果
#共通
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.75
particle item redstone_block ~ ~1 ~ 0.5 0.5 0.5 0.5 50
effect clear @s minecraft:strength
effect clear @s minecraft:speed
#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1