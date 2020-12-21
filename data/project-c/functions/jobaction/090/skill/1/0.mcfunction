#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 900

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0
scoreboard players set @s counter_1 10
effect give @s levitation 1 0 true
execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["090dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["090fire","090fireF","090-fireRed"],Invisible:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["090fire","090fireF","090-fireBlue"],Invisible:1b}
data modify entity @e[tag=090fireF,limit=1] Motion set from entity @e[tag=090dummy,limit=1] Pos
execute store result score @e[tag=090fireF,limit=1] counter_1 run data get entity @s Rotation[0] 200
execute store result score @e[tag=090fireF,limit=1] counter_2 run data get entity @s Rotation[1] 200
kill @e[tag=090dummy]
tag @e[tag=090fireF] remove 090fireF
replaceitem entity @s weapon.offhand minecraft:snowball
#リセット
tag @s remove SkillReady1
data merge block -25 2 89 {auto:1b}