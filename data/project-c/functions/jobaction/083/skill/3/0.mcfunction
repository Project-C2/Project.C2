#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 800

#スキル効果
#共通
particle witch ~ ~0.3 ~ 1 0 1 0.1 50 
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2

summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["082-compass","082-compass1"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["082-compass","082-compass2"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["082-compass","082-compass3"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["082-compass","082-compass4"],Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["082-compass","082-compass5"],Marker:1b}



teleport @e[limit=5,sort=nearest,tag=082-compass1] ^ ^1.5 ^1 ~ ~
teleport @e[limit=1,sort=nearest,tag=082-compass2] ^ ^1.5 ^1 ~30 ~
teleport @e[limit=1,sort=nearest,tag=082-compass3] ^ ^1.5 ^1 ~-30 ~
teleport @e[limit=1,sort=nearest,tag=082-compass4] ^ ^1.5 ^1 ~60 ~
teleport @e[limit=1,sort=nearest,tag=082-compass5] ^ ^1.5 ^1 ~-60 ~


#リセット
tag @s remove SkillReady3
data merge block 135 2 31 {auto:1b}