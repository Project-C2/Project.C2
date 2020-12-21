
scoreboard players set @s CT3 600
scoreboard players set @s usedSkill 3
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 2
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1
#スキル効果
#共通
scoreboard players set @s counter_3 60
effect give @s slowness 5 3 true
#リセット
tag @s remove SkillReady3