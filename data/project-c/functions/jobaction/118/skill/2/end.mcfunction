scoreboard players set @s CT2 1200
loot replace block 0 0 0 container.0 loot project-c:neac/118/2
execute store result score #118-- counter run data get block 0 0 0 Items[0].tag.cooltime
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s CT2 -= #118-- counter

data remove block 0 0 0 Items[]

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2