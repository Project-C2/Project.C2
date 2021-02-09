scoreboard players set @s CT3 600
scoreboard players remove @s subcounter 45
scoreboard players set @s counter_2 200
tag @s add 031-S3Force
execute if entity @s[tag=031-S3Regen] run tag @s remove 031-S3Regen
effect give @s minecraft:strength 10 9
effect give @s minecraft:haste 10 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 400 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100 force @a
playsound minecraft:entity.wither.death master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.wither.death master @a ~ ~ ~ 3 0.7
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0.5


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
data merge block 3 2 -69 {auto:1b}