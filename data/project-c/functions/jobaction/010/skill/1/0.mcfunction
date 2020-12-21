scoreboard players set @s CT1 1000


playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0.5
particle block minecraft:dark_oak_leaves ~ ~1 ~ 0.25 0.5 0.25 1 50 normal @a

scoreboard players set @s counter_1 1
scoreboard players reset @s[scores={walk=1..}] walk
scoreboard players reset @s[scores={sprint=1..}] sprint

clear @s minecraft:leather_helmet
clear @s minecraft:leather_chestplate
clear @s minecraft:leather_leggings
clear @s minecraft:leather_boots
effect give @s minecraft:invisibility 1 0

data merge block -1 2 -122 {auto:1b}


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1