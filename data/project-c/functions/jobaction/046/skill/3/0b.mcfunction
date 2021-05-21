#CT
scoreboard players set @s CT3 300

#スキル効果
tag @s add 046-3-1b
data merge block -69 5 -20 {auto:1b}

#演出
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 3 2

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3