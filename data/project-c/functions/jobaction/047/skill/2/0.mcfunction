#CT
scoreboard players set @s CT2 600
#スキル効果
#共通
scoreboard players set @s counter_2 100
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 2
particle minecraft:firework ~ ~1 ~ 1 1 1 0.25 50 force @a
#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -59 2 -20 {auto:1b}