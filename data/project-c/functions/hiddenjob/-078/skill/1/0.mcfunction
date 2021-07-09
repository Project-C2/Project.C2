#判定
#CT
scoreboard players set @s CT1 1040
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 2 0
item replace entity @s weapon.offhand with minecraft:snowball
particle dust 1 0 0 2 ~ ~1.52 ~ 1 1 1 0 30 force @a

scoreboard players set @s subcounter 1
#リセット
tag @s remove SkillReady1