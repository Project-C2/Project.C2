scoreboard players set @s CT1 500
clear @s water_bucket
clear @s heart_of_the_sea

scoreboard players set @s counter_7 80
effect give @s levitation 3 4 true
effect give @s glowing 8 0 true

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1.8
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2 0.8
playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0.5
particle minecraft:cloud ~ ~1 ~ 0.2 0.2 0.2 1 500 normal @a
particle minecraft:cloud ~ ~1 ~ 0.2 0.2 0.2 1 125 force @a

scoreboard players reset @s counter_6
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
