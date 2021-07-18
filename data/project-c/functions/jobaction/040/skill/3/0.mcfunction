scoreboard players set @s CT3 -3600

particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.5 100 force @a
me 「裁きの時だ。世界を裂くは我が乖離剣！！」
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["040-Air","040-Air1","first"],Duration:101,Age:0,Radius:0f}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["040-Air","040-Air2","first"],Duration:101,Age:0,Radius:0f}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
execute as @e[tag=040-Air1,tag=first] at @s run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=040-Air2,tag=first] at @s run teleport @s ~ ~ ~ ~180 ~
tag @e[tag=first] remove first
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0
tag @s remove SkillReady1
tag @s remove SkillReady2
scoreboard players set @s CT1 600
scoreboard players set @s CT2 600
scoreboard players set @s counter_4 1


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
data merge block 111 2 -71 {auto:1b}