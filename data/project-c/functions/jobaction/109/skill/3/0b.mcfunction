scoreboard players set @s CT3 0
item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 60
scoreboard players set @s CT2 900
item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 15
scoreboard players set @s CT1 900
item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'"CoolTime"'}} 15
scoreboard players set @s counter_4 1
tag @s add 109mamoru
execute if entity @s[team=Red] run tp @s @a[team=Red,tag=Battle,sort=random,limit=1,tag=!109mamoru]
execute if entity @s[team=Blue] run tp @s @a[team=Blue,tag=Battle,sort=random,limit=1,tag=!109mamoru]
scoreboard players set @s subcounter 0
scoreboard players set @s OutCombat -60
effect clear @s regeneration

tag @s remove SkillReady1
tag @s remove SkillReady2
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
