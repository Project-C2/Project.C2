#判定
#CT
scoreboard players set @s CT1 1180
scoreboard players set @s usedSkill 1

#スキル効果
#共通

scoreboard players add @s counter_1 1
scoreboard players set @s[scores={counter_1=2..}] counter_1 0

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0
particle minecraft:totem_of_undying ^ ^1 ^ 0 0 0 1 30

#リセット
tag @s remove SkillReady1
data merge block -85 2 31 {auto:1b}