#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 0
scoreboard players set @s counter_2 1


#スキル効果
#共通
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 1
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 3 2

tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"「光を超え、未来を切り開くんだ！」","bold":true}]

#リセット
tag @s remove SkillReady2