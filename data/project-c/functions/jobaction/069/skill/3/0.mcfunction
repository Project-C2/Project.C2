#CT
scoreboard players set @s CT3 600
scoreboard players set @s counter_3 1

playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 2
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 30 force
#スキル効果
#共通
summon area_effect_cloud ~ ~0.3 ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:32768,Tags:["MilionStormStand"]}
teleport @e[tag=MilionStormStand,limit=1,sort=nearest] ^ ^ ^ ~ ~

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3