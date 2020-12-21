scoreboard players set @s CT3 600


playsound minecraft:block.portal.travel master @a ~ ~ ~ 0.5 2
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 30

execute if entity @s[team=Red] as @e[tag=HorseR] if score @s playerNumber = @p playerNumber run data merge entity @s {SaddleItem:{Count:0b},ArmorItem:{Count:0b},Health:0.0f}
execute if entity @s[team=Blue] as @e[tag=HorseB] if score @s playerNumber = @p playerNumber run data merge entity @s {SaddleItem:{Count:0b},ArmorItem:{Count:0b},Health:0.0f}

execute if entity @s[team=Red] run summon minecraft:horse ~ ~ ~ {Attributes:[{Name:generic.maxHealth,Base:12.0d},{Name:generic.movementSpeed,Base:0.25d}],Health:12.0f,SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{id:"minecraft:golden_horse_armor",Count:1b},ArmorDropChances:0f,Tags:["Horse","HorseR","HorseSet"],Team:"Red",Tame:1b}
execute if entity @s[team=Blue] run summon minecraft:horse ~ ~ ~ {Attributes:[{Name:generic.maxHealth,Base:12.0d},{Name:generic.movementSpeed,Base:0.25d}],Health:12.0f,SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{id:"minecraft:golden_horse_armor",Count:1b},ArmorDropChances:0f,Tags:["Horse","HorseB","HorseSet"],Team:"Blue",Tame:1b}

scoreboard players operation @e[tag=HorseSet] playerNumber = @s playerNumber
tag @e[tag=HorseSet] remove HorseSet

data merge block 51 2 -122 {auto:1b}


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3