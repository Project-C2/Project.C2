#CT
scoreboard players set @s CT3 0

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.75

particle minecraft:sweep_attack ~ ~1.3 ~ 0 0 0 1 200 
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0.1 128

playsound minecraft:block.end_gateway.spawn master @a ~ ~ ~ 1 1.5
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 0.2

tag @s add useBinding

clear @s stick

#スキル効果
#共通

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3