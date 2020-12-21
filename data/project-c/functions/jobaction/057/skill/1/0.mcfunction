#CT
scoreboard players set @s CT1 1100
scoreboard players set @s counter_1 21
scoreboard players set @s counter_4 21
#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a

effect give @s strength 1 1 false

#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1