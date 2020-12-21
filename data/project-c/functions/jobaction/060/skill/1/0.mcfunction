#CT
scoreboard players set @s CT1 0
scoreboard players set @s usedSkill 1

#スキル効果
#共通
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 1
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 10
particle minecraft:firework ~ ~ ~ 1 0 1 0.5 10 force @a

execute if entity @s[team=Red] as @e[tag=G-HorseR] if score @s playerNumber = @p playerNumber run data merge entity @s {SaddleItem:{Count:0b},ArmorItem:{Count:0b},Health:0.0f}
execute if entity @s[team=Blue] as @e[tag=G-HorseB] if score @s playerNumber = @p playerNumber run data merge entity @s {SaddleItem:{Count:0b},ArmorItem:{Count:0b},Health:0.0f}

execute if entity @s[team=Red] run summon minecraft:horse ~ ~ ~ {Attributes:[{Name:generic.maxHealth,Base:20.0d},{Name:generic.movementSpeed,Base:0.15d},{Name:generic.knockbackResistance,Base:1d}],Health:40.0f,SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b},ArmorDropChances:0f,Tags:["G-Horse","G-HorseR","G-HorseSet"],Team:"Red",Tame:1b}

execute if entity @s[team=Blue] run summon minecraft:horse ~ ~ ~ {Attributes:[{Name:generic.maxHealth,Base:20.0d},{Name:generic.movementSpeed,Base:0.15d},{Name:generic.knockbackResistance,Base:1d}],Health:40.0f,SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b},ArmorDropChances:0f,Tags:["G-Horse","G-HorseB","G-HorseSet"],Team:"Blue",Tame:1b}

scoreboard players operation @e[tag=G-HorseSet] playerNumber = @s playerNumber
effect give @e[tag=G-HorseSet] regeneration 100000 0 true
tag @e[tag=G-HorseSet] remove G-HorseSet

data merge block 119 2 -20 {auto:1b}

#リセット
tag @s remove SkillReady1