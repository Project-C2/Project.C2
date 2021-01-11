execute store result score @s CT3 run data get entity @s SelectedItem.tag.wnkmSkillCT 1

summon area_effect_cloud ~ ~ ~ {Tags:["117_3_1","first"],Duration:35}
summon area_effect_cloud ~ ~ ~ {Tags:["117_3_2"],Duration:35}
execute if entity @s[team=Red] run tag @e[tag=first] add 117_3R
execute if entity @s[team=Blue] run tag @e[tag=first] add 117_3B
tag @e[tag=first] remove first

data merge block 36 61 -62 {auto:1b}
data merge block 36 61 -60 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
