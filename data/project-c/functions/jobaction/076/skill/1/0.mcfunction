#判定
#CT
scoreboard players set @s CT1 1100
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:block.anvil.land master @a ~ ~ ~ 2 0
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0

particle flash ~ ~1.52 ~ 0 0 0 0 3 force @a
particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a

effect give @s minecraft:resistance 1 4
effect give @s minecraft:slowness 1 4 true
effect give @s minecraft:slow_falling 1 6 true
attribute @s minecraft:generic.knockback_resistance base set 1
scoreboard players set @s counter_1 9
#リセット
tag @s remove SkillReady1