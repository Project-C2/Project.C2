#CT
scoreboard players set @s CT2 800

#スキル効果
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1
particle minecraft:cloud ~ ~0.5 ~ 0.0 0.0 0.0 0.2 100 force @a
tag @s add 046-2
effect give @a minecraft:levitation 1 13
data merge block -71 2 -20 {auto:1b}

#演出


#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2