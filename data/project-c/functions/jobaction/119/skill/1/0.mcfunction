execute store result score @s CT1 run data get entity @s SelectedItem.tag.wnkmSkillCT 1
scoreboard players set @s counter_2 15

scoreboard players set @s counter_1 0
tag @s add 119fail
execute anchored eyes positioned ^ ^ ^ anchored feet run function project-c:jobaction/119/skill/1/loop
execute if entity @s[tag=119fail] run function project-c:jobaction/119/skill/1/fail

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
