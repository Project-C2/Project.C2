#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 700
scoreboard players set @s counter_2 100

#スキル効果
#共通
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 2 2
effect give @s slowness 5 2 true

#リセット
tag @s remove SkillReady2