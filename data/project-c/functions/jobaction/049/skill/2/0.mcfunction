scoreboard players set @s CT2 1000

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0
effect give @s minecraft:resistance 1 5 true
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 100
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["049-Allay","first","049-Allay1"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["049-Allay","first","049-Allay2"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["049-Allay","first","049-Allay3"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["049-Allay","first","049-Allay4"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["049-Allay","first","049-Allay5"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["049-Allay","first","049-Allay6"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["049-Allay","first","049-Allay7"],Marker:1b}
teleport @e[tag=first,limit=1,sort=nearest,tag=049-Allay1] ~ ~1 ~ ~ ~
teleport @e[tag=first,limit=1,sort=nearest,tag=049-Allay2] ~ ~1 ~ ~10 ~
teleport @e[tag=first,limit=1,sort=nearest,tag=049-Allay3] ~ ~1 ~ ~-10 ~
teleport @e[tag=first,limit=1,sort=nearest,tag=049-Allay4] ~ ~1 ~ ~20 ~
teleport @e[tag=first,limit=1,sort=nearest,tag=049-Allay5] ~ ~1 ~ ~-20 ~
teleport @e[tag=first,limit=1,sort=nearest,tag=049-Allay6] ~ ~1 ~ ~30 ~
teleport @e[tag=first,limit=1,sort=nearest,tag=049-Allay7] ~ ~1 ~ ~-30 ~
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first

data merge block -35 2 -20 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2