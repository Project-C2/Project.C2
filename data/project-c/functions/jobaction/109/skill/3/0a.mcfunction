scoreboard players set @s CT3 0
replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 60
scoreboard players set @s CT2 900
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 15
scoreboard players set @s CT1 900
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 15
scoreboard players set @s counter_4 1
scoreboard players set @s subcounter 0
scoreboard players set @s OutCombat -60
effect clear @s regeneration

tag @s remove SkillReady1
tag @s remove SkillReady2
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
