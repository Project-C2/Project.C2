#判定
#CT
scoreboard players set @s CT1 800
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1
particle end_rod ~ ~0.3 ~ 3 0 3 0.1 100 
scoreboard players set @s counter_1 141
effect give @s minecraft:jump_boost 7 2 true
particle spit ~ ~1 ~ 0 0 0 1 130 

#リセット
tag @s remove SkillReady1