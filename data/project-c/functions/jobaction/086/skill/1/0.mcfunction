#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1000

#スキル効果
#共通

effect give @s resistance 1 4 true
effect give @s night_vision 1 0 true
particle minecraft:flash ~ ~ ~ 0 0 0 1 2
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 1

scoreboard players set @s counter_1 12

#リセット
tag @s remove SkillReady1