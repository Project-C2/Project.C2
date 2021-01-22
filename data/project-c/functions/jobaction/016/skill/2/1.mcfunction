#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1180
scoreboard players remove @s Mana 8
scoreboard players set @s counter_1 0
scoreboard players set @s counter_3 0
#スキル効果
#共通

execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^5 {Tags:["016dummy"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["016fire","016fireF","Arrow"],damage:1d,life:1198s,pickup:2b,Color:-1,NoGravity:1b}

data modify entity @e[tag=016fireF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=016fireF,limit=1] Motion set from entity @e[tag=016dummy,limit=1] Pos
execute store result score @e[tag=016fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=016fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=016fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=016fireF]
kill @e[tag=016dummy]
tag @e[tag=016fireF] remove 016fireF

tellraw @s ["",{"selector":"@s"},{"text":"は デインを となえた！","bold":true}]

playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 2 0.75
data merge block 73 2 -122 {auto:1b}

#リセット
tag @s remove SkillReady2