execute if score @s CT2 matches 1200.. run scoreboard players set @s CT2 1200
loot replace block 0 0 0 container.0 loot project-c:neac/118/2
execute store result score #118-- counter run data get block 0 0 0 Items[0].tag.cooltime
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s CT2 -= #118-- counter


scoreboard players operation @s CT2 -= @s MagicFatigue

data remove block 0 0 0 Items[]

scoreboard players reset #118--

clear @s compass{CT:2}
function project-c:general/cooltimecounter

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2


