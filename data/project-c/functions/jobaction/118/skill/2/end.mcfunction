scoreboard players set @s CT2 1200
execute store result score #118-- counter run data get entity @s Inventory[{tag:{118--:2b}}].tag.cooltime
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s CT2 -= #118-- counter


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2