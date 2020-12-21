#判定
#CT
scoreboard players set @s CT1 1040
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 2 0

particle dust 0 0 1 2 ~ ~1.52 ~ 1 1 1 0 30 force @a
replaceitem entity @s weapon.offhand minecraft:snowball
scoreboard players set @s Mana 1


scoreboard players set @s counter_3 0


function project-c:jobaction/078/replaceitem/0
execute if entity @s[scores={CT1=1200..}] run function project-c:jobaction/078/replaceitem/1
execute if entity @s[scores={CT2=1200..}] run function project-c:jobaction/078/replaceitem/2

replaceitem entity @s weapon.offhand minecraft:snowball

#リセット
tag @s remove SkillReady1