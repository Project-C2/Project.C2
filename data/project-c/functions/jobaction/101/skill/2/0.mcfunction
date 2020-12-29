#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1080

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0
scoreboard players set @s subcounter 40
effect give @s levitation 2 0 true
effect give @s resistance 1 4 true
execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^-1 {Tags:["101dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["101back","101backF","101-backRed","101-Level1"],Invisible:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["101back","101backF","101-backBlue","101-Level1"],Invisible:1b}
data modify entity @e[tag=101backF,limit=1] Motion set from entity @e[tag=101dummy,limit=1] Pos
execute store result score @e[tag=101backF,limit=1] counter_1 run data get entity @s Rotation[0] 200
execute store result score @e[tag=101backF,limit=1] counter_2 run data get entity @s Rotation[1] 200
kill @e[tag=101dummy]
tag @e[tag=101backF] remove 101backF
#リセット
tag @s remove SkillReady2
data merge block 109 2 89 {auto:1b}