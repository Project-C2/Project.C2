#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1000


#スキル効果
#共通
playsound minecraft:item.bottle.fill master @a ~ ~ ~ 1 1.5
particle cloud ~ ~1 ~ 0.3 0.3 0.3 0 20
replaceitem entity @s hotbar.4 minecraft:tipped_arrow{CustomPotionEffects:[{Id:2,Amplifier:127,Duration:100}],display:{Name:'{"text":"麻痺薬","color":"light_blue","italic":"false","underlined":"false"}'}}

#リセット
tag @s remove SkillReady2