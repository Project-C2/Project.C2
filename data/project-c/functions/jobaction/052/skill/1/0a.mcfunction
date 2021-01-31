#CT
scoreboard players set @s CT1 900

#スキル効果
tag @s add 052-1
data merge block 23 2 -20 {auto:1b}

#演出
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1
particle minecraft:cloud ~ ~ ~ 0.0 1.0 0.0 0.5 50 force @a

#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1