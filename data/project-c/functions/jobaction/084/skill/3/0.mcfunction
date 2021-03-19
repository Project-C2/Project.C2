#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 -1200

#スキル効果
#共通

tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"霊符「夢想封印」","bold":true}]
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 100 force
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin1","084-huuinR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin2","084-huuinR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin3","084-huuinR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin4","084-huuinR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin5","084-huuinR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin6","084-huuinR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin7","084-huuinR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin8","084-huuinR"],Marker:1b}



execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin1","084-huuinB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin2","084-huuinB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin3","084-huuinB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin4","084-huuinB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin5","084-huuinB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin6","084-huuinB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin7","084-huuinB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["084-huuin","084-huuin8","084-huuinB"],Marker:1b}


teleport @e[limit=1,sort=nearest,tag=084-huuin1] ^ ^1 ^ ~ 0
teleport @e[limit=1,sort=nearest,tag=084-huuin2] ^ ^1 ^ ~45 0
teleport @e[limit=1,sort=nearest,tag=084-huuin3] ^ ^1 ^ ~90 0
teleport @e[limit=1,sort=nearest,tag=084-huuin4] ^ ^1 ^ ~135 0
teleport @e[limit=1,sort=nearest,tag=084-huuin5] ^ ^1 ^ ~180 0
teleport @e[limit=1,sort=nearest,tag=084-huuin6] ^ ^1 ^ ~225 0
teleport @e[limit=1,sort=nearest,tag=084-huuin7] ^ ^1 ^ ~270 0
teleport @e[limit=1,sort=nearest,tag=084-huuin8] ^ ^1 ^ ~315 0
#リセット
tag @s remove SkillReady3
data merge block -93 2 89 {auto:1b}