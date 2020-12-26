#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1100

#スキル効果
#共通
playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 1

execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["100sword","100swordF","100-swordRed","100sword-Level1"],Invisible:1b,Marker:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["100sword","100swordF","100-swordBlue","100sword-Level1"],Invisible:1b,Marker:1b}
teleport @e[tag=100swordF] ^ ^0.5 ^ ~ 0
execute as @e[tag=100swordF] at @s run teleport @s ^ ^ ^ ~-60 ~

tag @e[tag=100swordF] remove 100swordF
#リセット
tag @s remove SkillReady1
data merge block 93 5 89 {auto:1b}