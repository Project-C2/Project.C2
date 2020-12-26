#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 900

#スキル効果
#共通
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 1

execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["100zesshou","100zesshouF","100-zesshouRed"],Invisible:1b,Marker:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["100zesshou","100zesshouF","100-zesshouBlue"],Invisible:1b,Marker:1b}
teleport @e[tag=100zesshouF] ^ ^0.5 ^ ~ 0

tag @e[tag=100zesshouF] remove 100zesshouF
#リセット
tag @s remove SkillReady1
data merge block 99 2 89 {auto:1b}