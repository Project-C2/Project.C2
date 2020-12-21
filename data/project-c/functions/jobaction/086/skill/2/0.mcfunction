#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1000

#スキル効果
#共通

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2

scoreboard players set @s counter_2 60

#リセット
tag @s remove SkillReady2