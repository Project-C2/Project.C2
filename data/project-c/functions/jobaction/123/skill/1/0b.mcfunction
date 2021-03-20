function project-c:jobaction/123/skill/1/summon

scoreboard players set @s CT1 1080
scoreboard players operation @s CT1 += @s counter_1

scoreboard players set @s counter_1 40
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
