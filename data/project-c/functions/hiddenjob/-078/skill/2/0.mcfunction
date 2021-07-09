#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1000

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0
scoreboard players set @s counter_2 5

execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["-078dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["-078fire","-078fireF","-078-fireRed"],Invisible:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["-078fire","-078fireF","-078-fireBlue"],Invisible:1b}
data modify entity @e[tag=-078fireF,limit=1] Motion set from entity @e[tag=-078dummy,limit=1] Pos
execute store result score @e[tag=-078fireF,limit=1] counter_1 run data get entity @s Rotation[0] 200
execute store result score @e[tag=-078fireF,limit=1] counter_2 run data get entity @s Rotation[1] 200
kill @e[tag=-078dummy]
tag @e[tag=-078fireF] remove -078fireF
item replace entity @s weapon.offhand with minecraft:snowball
#リセット
tag @s remove SkillReady2
data merge block 87 26 31 {auto:1b}