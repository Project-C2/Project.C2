scoreboard players set @s CT2 800
scoreboard players set @s counter_1 40

playsound minecraft:item.trident.thunder master @a ~ ~ ~ 3 1
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.5 100 force @a

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 109 2 -71 {auto:1b}
