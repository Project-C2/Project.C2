#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1180
scoreboard players set @s counter_1 0
scoreboard players set @s counter_2 0
#スキル効果
#共通
tellraw @s ["",{"text":"しかし MPが たりない！","bold":true}]
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 1

#リセット
tag @s remove SkillReady1