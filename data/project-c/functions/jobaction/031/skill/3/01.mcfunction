scoreboard players set @s CT3 600
scoreboard players remove @s subcounter 35
scoreboard players set @s counter_2 300
tag @s add 031-S3Regen
execute if entity @s[tag=031-S3Force] run tag @s remove 031-S3Force
effect give @s minecraft:regeneration 15 2
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 300 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 75 force @a
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0.5
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0.5
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2



tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
data merge block 3 2 -71 {auto:1b}