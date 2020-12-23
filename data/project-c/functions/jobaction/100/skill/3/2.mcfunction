#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1040

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^1 ^ {Tags:["100bullet","100bulletF1","100-bulletRed","100-Level2"],Invisible:1b,Marker:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^1 ^ {Tags:["100bullet","100bulletF1","100-bulletBlue","100-Level2"],Invisible:1b,Marker:1b}
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^2 ^1 ^ {Tags:["100bullet","100bulletF2","100-bulletRed","100-Level2"],Invisible:1b,Marker:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^2 ^1 ^ {Tags:["100bullet","100bulletF2","100-bulletBlue","100-Level2"],Invisible:1b,Marker:1b}
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^-2 ^1 ^ {Tags:["100bullet","100bulletF3","100-bulletRed","100-Level2"],Invisible:1b,Marker:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^-2 ^1 ^ {Tags:["100bullet","100bulletF3","100-bulletBlue","100-Level2"],Invisible:1b,Marker:1b}

teleport @e[tag=100bulletF1] ^2 ^1 ^ ~ ~
teleport @e[tag=100bulletF2] ^ ^1 ^ ~ ~
teleport @e[tag=100bulletF3] ^-2 ^1 ^ ~ ~

tag @e[tag=100bulletF1] remove 100bulletF1
tag @e[tag=100bulletF2] remove 100bulletF2
tag @e[tag=100bulletF3] remove 100bulletF3
#リセット
tag @s remove SkillReady1
data merge block 97 2 89 {auto:1b}