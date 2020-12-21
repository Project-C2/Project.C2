scoreboard players set @s CT2 1180

title @s actionbar {"text":"周囲に味方がいません","color":"red","underlined":true}
particle smoke ~ ~1 ~ 1 1 1 0 50 normal @s
playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1.2

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2