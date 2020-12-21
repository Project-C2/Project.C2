#判定
#CT
scoreboard players set @s CT1 800
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:block.end_gateway.spawn master @a ~ ~ ~ 1 1.25
teleport @s ~ ~3 ~
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:2000,Tags:["MakingMagicStand"]}

function project-c:jobaction/073/skill/1/1-0

tag @s add MakingMagic

#リセット
tag @s remove SkillReady1
data merge block 23 2 31 {auto:1b}