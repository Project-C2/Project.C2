#CT
scoreboard players set @s CT2 1120
scoreboard players set @s usedSkill 2

scoreboard players set @s CT1 1200
effect give @s absorption 3 0 true

playsound entity.drowned.swim master @s ~ ~ ~ 1 0.5
playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0.5

#Reset
tag @s remove SkillReady2