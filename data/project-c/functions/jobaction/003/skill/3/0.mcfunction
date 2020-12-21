scoreboard players set @s CT3 1000


playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 2
particle item minecraft:paper ~ ~1 ~ 0 0 0 0.5 20 normal @a

effect give @s minecraft:speed 1 60 true
scoreboard players set @s counter_1 1
data merge block -81 2 -122 {auto:1b}


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3