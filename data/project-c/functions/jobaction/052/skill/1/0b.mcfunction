#CT
scoreboard players set @s CT1 900
tag @s[scores={counter=45..}] add 052-3
scoreboard players remove @a[tag=052-3] counter 45

#スキル効果
tag @s add 052-1
execute unless entity @s[tag=052-3] run data merge block 23 2 -20 {auto:1b}
execute if entity @s[tag=052-3] run data merge block 23 5 -20 {auto:1b}

#演出
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1
execute if entity @s[tag=052-3] run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 2
particle minecraft:cloud ~ ~ ~ 0.0 1.0 0.0 0.5 50 force @a

#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1