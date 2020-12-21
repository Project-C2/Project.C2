scoreboard players set @s CT1 1080
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 *= #3 counter
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 /= #2 counter
scoreboard players operation @s CT1 += @s counter_1
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 5
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
scoreboard players set @s counter_1 0
