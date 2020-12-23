#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1040

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0
scoreboard players set @s subcounter 10
effect give @s levitation 1 0 true
execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["100dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["100fire","100fireF","100-fireRed","100-Level3"],Invisible:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["100fire","100fireF","100-fireBlue","100-Level3"],Invisible:1b}
data modify entity @e[tag=100fireF,limit=1] Motion set from entity @e[tag=100dummy,limit=1] Pos
execute store result score @e[tag=100fireF,limit=1] counter_1 run data get entity @s Rotation[0] 200
execute store result score @e[tag=100fireF,limit=1] counter_2 run data get entity @s Rotation[1] 200
kill @e[tag=100dummy]
tag @e[tag=100fireF] remove 100fireF
#リセット
tag @s remove SkillReady1
data merge block 95 2 89 {auto:1b}