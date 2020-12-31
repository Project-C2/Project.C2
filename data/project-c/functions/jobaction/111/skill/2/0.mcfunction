#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 900

#スキル効果
#共通
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.3 50
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
scoreboard players set @s counter_2 61
#リセット
tag @s remove SkillReady2