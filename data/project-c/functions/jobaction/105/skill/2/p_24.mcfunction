scoreboard players set @s CT2 1080
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_2 *= #3 counter
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_2 /= #2 counter
scoreboard players operation @s CT2 += @s counter_2
item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 5
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
scoreboard players set @s counter_2 0
