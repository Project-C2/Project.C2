#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 800
scoreboard players set @s counter_2 100

#スキル効果
#共通

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 2 0

#リセット
tag @s remove SkillReady2