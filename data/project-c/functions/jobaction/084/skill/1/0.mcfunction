#判定
#CT
scoreboard players set @s CT1 1100
scoreboard players set @s usedSkill 1

#スキル効果
#共通

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda1","084-ohudaR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda2","084-ohudaR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda3","084-ohudaR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda4","084-ohudaR"],Marker:1b}


execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda1","084-ohudaB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda2","084-ohudaB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda3","084-ohudaB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-ohuda","084-ohuda4","084-ohudaB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=084-ohuda1] ^ ^1.5 ^1 ~25 ~
teleport @e[limit=1,sort=nearest,tag=084-ohuda2] ^ ^1.5 ^1 ~-25 ~
teleport @e[limit=1,sort=nearest,tag=084-ohuda3] ^ ^1.5 ^1 ~50 ~
teleport @e[limit=1,sort=nearest,tag=084-ohuda4] ^ ^1.5 ^1 ~-50 ~
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1

#リセット
tag @s remove SkillReady1

data merge block -97 2 89 {auto:1b}