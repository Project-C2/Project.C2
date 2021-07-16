#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1000

#スキル効果
#共通
particle witch ~ ~0.3 ~ 1 0 1 0.1 50 
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 1
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 0

summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro1"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro2"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro3"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro4"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro5"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro6"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro7"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro8"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["072-koziro","072-koziro9"],Marker:1b}


teleport @e[limit=5,sort=nearest,tag=072-koziro] ^ ^1.5 ^1 ~ ~
teleport @e[limit=1,sort=nearest,tag=072-koziro2] ^ ^1.5 ^1 ~15 ~15
teleport @e[limit=1,sort=nearest,tag=072-koziro3] ^ ^1.5 ^1 ~15 ~-15
teleport @e[limit=1,sort=nearest,tag=072-koziro4] ^ ^1.5 ^1 ~-15 ~15
teleport @e[limit=1,sort=nearest,tag=072-koziro5] ^ ^1.5 ^1 ~-15 ~-15
teleport @e[limit=5,sort=nearest,tag=072-koziro6] ^ ^1.5 ^1 ~7 ~7
teleport @e[limit=1,sort=nearest,tag=072-koziro7] ^ ^1.5 ^1 ~7 ~-7
teleport @e[limit=1,sort=nearest,tag=072-koziro8] ^ ^1.5 ^1 ~-7 ~7
teleport @e[limit=1,sort=nearest,tag=072-koziro9] ^ ^1.5 ^1 ~-7 ~-7

execute as @s[team=Red] at @s run tag @e[limit=5,sort=nearest,tag=072-koziro] add 072-koziroR

execute as @s[team=Blue] at @s run tag @e[limit=5,sort=nearest,tag=072-koziro] add 072-koziroB

#リセット
tag @s remove SkillReady2
data merge block 13 5 31 {auto:1b}