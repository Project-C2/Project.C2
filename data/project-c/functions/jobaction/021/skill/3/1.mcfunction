scoreboard players set @s counter_3 20
scoreboard players add @s counter_4 10
tag @s add sliding_boots_use
scoreboard players set @s CT3 1140

particle minecraft:cloud ~ ~0.2 ~ 0 0 0 0.1 8 normal @a
particle minecraft:cloud ~ ~0.2 ~ 0 0 0 0.1 2 force @a
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["sliding_boots_AEC"],Radius:0f,Duration:6}

tag @s remove use
tag @s remove SkillReady3