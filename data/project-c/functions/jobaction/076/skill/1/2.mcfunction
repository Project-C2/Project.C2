#判定
#CT
scoreboard players set @s CT1 0
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0

particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 60
particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a

scoreboard players set @s subcounter 1
#リセット
tag @s remove SkillReady1