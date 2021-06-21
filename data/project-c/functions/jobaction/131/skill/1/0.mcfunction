#スキル効果
#共通
scoreboard players set @s CT1 200
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0
scoreboard players reset @s useCarrotStick
scoreboard players set @s counter_1 161

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
effect give @s minecraft:levitation 7 0 true