execute store result score @s CT2 run data get entity @s SelectedItem.tag.wnkmSkillCT 1

function project-c:jobaction/117/skill/2/mahouzin

summon minecraft:armor_stand ~ ~ ~ {Tags:["first","117_2o","117_2o1"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["first","117_2o","117_2o2"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
execute rotated ~ 0 as @e[tag=first] positioned as @s run tp @s ~ ~0.5 ~ ~ ~
scoreboard players set @e[tag=first] counter_1 300
execute as @e[tag=first,tag=117_2o1] at @s run function project-c:jobaction/117/skill/2/summon_horse1
execute as @e[tag=first,tag=117_2o2] at @s run function project-c:jobaction/117/skill/2/summon_horse3
execute if entity @s[team=Red] run tag @e[tag=first] add 117_2R
execute if entity @s[team=Blue] run tag @e[tag=first] add 117_2B
execute if entity @s[team=Red] run team join Red @e[tag=first,type=skeleton_horse]
execute if entity @s[team=Blue] run team join Blue @e[tag=first,type=skeleton_horse]

tag @e[tag=first] remove first

data merge block 34 61 -62 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2