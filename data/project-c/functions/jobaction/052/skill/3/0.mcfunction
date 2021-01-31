#CT
scoreboard players set @s CT3 600

#効果

#演出
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0
particle minecraft:flame ~ ~1 ~ 0 0 0 0.5 200

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3