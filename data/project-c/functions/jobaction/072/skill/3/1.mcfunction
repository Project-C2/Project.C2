#CT
scoreboard players set @s CT3 0
scoreboard players set @s counter_3 161

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 0
particle minecraft:totem_of_undying ~ ~0.3 ~ 3 0 3 0.1 100 
particle spit ~ ~1 ~ 0 0 0 1 130 

playsound minecraft:item.totem.use master @a ~ ~ ~ 3 0
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 0.5
effect give @s strength 7 0
#スキル効果
#共通

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3