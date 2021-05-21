execute store result score @s CT2 run data get entity @s SelectedItem.tag.wnkmSkillCT 1
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this","124storm"],Duration:160}
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID

execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this
data merge block 118 61 -62 {auto:1b}

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2